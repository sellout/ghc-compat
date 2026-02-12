-- | Compatibility wrapper around ghc’s "GHC.Tc.Plugin".
module GHC.Tc.Plugin
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Plugin as Upstream
#else
import "ghc" TcPluginM as Upstream
#endif
