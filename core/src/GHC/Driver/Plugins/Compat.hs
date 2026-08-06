-- | Compatibility wrapper around ghc’s "GHC.Driver.Plugins".
module GHC.Driver.Plugins.Compat
  ( CompatPlugin (..),
    defaultPlugin,
    unwrapPlugin,
  )
where

import qualified "this" GHC.Driver.Plugins.Upstream as Upstream
import qualified "this" GHC.Prelude.Basic as Prelude
import "this" GHC.Prelude.Basic (
  IO, Maybe (Nothing), String, const, return, (.))
import "this" GHC.Tc.Types (IfM, TcGblEnv, TcM)
import "this" GHC.Unit.Module.ModIface (ModIface)
import "this" GHC.Unit.Module.ModSummary (ModSummary)
import "this" Language.Haskell.Syntax.Decls (HsGroup)
import "this" Language.Haskell.Syntax.Expr (LHsExpr)
#if MIN_VERSION_ghc(8, 6, 0)
import "this" GHC.Driver.Env.Types (Hsc)
import "this" GHC.Hs.Extension (GhcRn, GhcTc)
#endif
#if MIN_VERSION_ghc(8, 10, 0)
import "this" GHC.Driver.DynFlags (DynFlags)
#endif
#if MIN_VERSION_ghc(9, 2, 0)
import "this" GHC.Driver.Env.Types (HscEnv, hsc_dflags)
#endif
#if MIN_VERSION_ghc(9, 4, 0)
import "this" GHC.Driver.Plugins.Upstream (ParsedResult)
#elif MIN_VERSION_ghc(8, 6, 0)
-- TODO: Should get this from a more specific module, but currently nothing
--       exports this across all versions.
import "this" GHC.Hs (HsParsedModule)

data ParsedResult = ParsedResult {parsedResultModule :: HsParsedModule}
#endif

#if MIN_VERSION_ghc(8, 10, 1)
type HoleFitPlugin =
  ([Upstream.CommandLineOption] -> Maybe Upstream.HoleFitPluginR :: *)
#endif

-- | This has the same fields as `Upstream.Plugin`, but behaves in slightly
--   different ways.
--
-- 1. options are always provided in the order they are on the command line,
-- 2. for versions that have `driverPlugin`, they also have `dynflagsPlugin`
--    (which `driverPlugin` replaced). Both the `dynflagsPlugin and
--    `driverPlugin` will be used.
data CompatPlugin = CompatPlugin
  { installCoreToDos :: Upstream.CorePlugin,
    tcPlugin :: Upstream.TcPlugin
#if MIN_VERSION_ghc(8, 6, 1)
  , pluginRecompile ::
      [Upstream.CommandLineOption] -> IO Upstream.PluginRecompile
  , parsedResultAction ::
      [Upstream.CommandLineOption] ->
      ModSummary ->
      ParsedResult ->
      Hsc ParsedResult
  , renamedResultAction ::
      [Upstream.CommandLineOption] ->
      TcGblEnv ->
      HsGroup GhcRn ->
      TcM (TcGblEnv, HsGroup GhcRn)
  , typeCheckResultAction ::
      [Upstream.CommandLineOption] ->
      ModSummary ->
      TcGblEnv ->
      TcM TcGblEnv
  , spliceRunAction ::
      [Upstream.CommandLineOption] ->
      LHsExpr GhcTc ->
      TcM (LHsExpr GhcTc)
  , interfaceLoadAction ::
      forall lcl.
      [Upstream.CommandLineOption] ->
      ModIface ->
      IfM lcl ModIface
#endif
#if MIN_VERSION_ghc(8, 10, 1)
  , holeFitPlugin :: HoleFitPlugin
  , dynflagsPlugin :: [Upstream.CommandLineOption] -> DynFlags -> IO DynFlags
#endif
#if MIN_VERSION_ghc(9, 2, 1)
  , driverPlugin :: [Upstream.CommandLineOption] -> HscEnv -> IO HscEnv
#endif
#if MIN_VERSION_ghc(9, 4, 1)
  , defaultingPlugin :: Upstream.DefaultingPlugin
#endif
#if MIN_VERSION_ghc(9, 10, 1)
  , latePlugin :: Upstream.LatePlugin
#endif
  }

defaultPlugin :: CompatPlugin
defaultPlugin =
  CompatPlugin
    { installCoreToDos = const return
    , tcPlugin = const Nothing
#if MIN_VERSION_ghc(8, 6, 1)
    , pluginRecompile = Upstream.impurePlugin
    , renamedResultAction = \_ env grp -> return (env, grp)
    , parsedResultAction = \_ _ -> return
    , typeCheckResultAction = \_ _ -> return
    , spliceRunAction = \_ -> return
    , interfaceLoadAction = \_ -> return
#endif
#if MIN_VERSION_ghc(8, 10, 1)
    , holeFitPlugin = const Nothing
    , dynflagsPlugin = const return
#endif
#if MIN_VERSION_ghc(9, 2, 1)
    , driverPlugin = const return
#endif
#if MIN_VERSION_ghc(9, 4, 1)
    , defaultingPlugin = const Nothing
#endif
#if MIN_VERSION_ghc(9, 10, 1)
    , latePlugin = \_ -> const return
#endif
    }

-- | `-fplugin-opt`s are provided to the plugin in reverse order before GHC 8.6.
--   This ensures the plugin always receives then in the order they were
--   provided on the command line.
correctOptionOrder :: [String] -> [String]
#if MIN_VERSION_GLASGOW_HASKELL(8, 6, 1, 0)
correctOptionOrder x = x
#else
correctOptionOrder = reverse
#endif

-- | Convert a @ghc-compat@ `Plugin` to a @ghc@ `Upstream.Plugin`, preserving
--   the behavior of the @ghc-compat@ version.
unwrapPlugin :: CompatPlugin -> Upstream.Plugin
unwrapPlugin plugin =
  Upstream.defaultPlugin
    { Upstream.installCoreToDos = installCoreToDos plugin . correctOptionOrder,
      Upstream.tcPlugin = tcPlugin plugin . correctOptionOrder
    }
#if MIN_VERSION_ghc(8, 6, 1)
    { Upstream.pluginRecompile = pluginRecompile plugin . correctOptionOrder,
      Upstream.renamedResultAction =
        renamedResultAction plugin . correctOptionOrder,
      Upstream.typeCheckResultAction =
        typeCheckResultAction plugin . correctOptionOrder,
      Upstream.spliceRunAction = spliceRunAction plugin . correctOptionOrder,
      Upstream.interfaceLoadAction =
        interfaceLoadAction plugin . correctOptionOrder
    }
#endif
#if MIN_VERSION_ghc(8, 10, 1)
    { Upstream.holeFitPlugin = holeFitPlugin plugin . correctOptionOrder
    }
#endif
#if MIN_VERSION_ghc(9, 4, 1)
    { Upstream.parsedResultAction =
        parsedResultAction plugin . correctOptionOrder
    }
#elif MIN_VERSION_ghc(8, 6, 1)
    { Upstream.parsedResultAction = \opts summary ->
        Prelude.fmap parsedResultModule
          . parsedResultAction plugin (correctOptionOrder opts) summary
          . ParsedResult
    }
#endif
#if MIN_VERSION_ghc(9, 2, 1)
    { -- This needs to first run the `dynflagsPlugin`, if any, and then the
      -- `driverPlugin`, if any.
      Upstream.driverPlugin = \optStrs env ->
        let opts = correctOptionOrder optStrs
         in
          (\dflags -> driverPlugin plugin opts env {hsc_dflags = dflags})
            Prelude.=<< dynflagsPlugin plugin opts ( hsc_dflags env)
    }
#elif MIN_VERSION_ghc(8, 10, 1)
    { Upstream.dynflagsPlugin = dynflagsPlugin plugin . correctOptionOrder
    }
#endif
#if MIN_VERSION_ghc(9, 4, 1)
    { Upstream.defaultingPlugin = defaultingPlugin plugin . correctOptionOrder
    }
#endif
#if MIN_VERSION_ghc(9, 10, 1)
    { Upstream.latePlugin = \hscEnv ->
        latePlugin plugin hscEnv . correctOptionOrder
    }
#endif
