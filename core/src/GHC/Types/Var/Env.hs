-- | Compatibility wrapper around ghc’s "GHC.Types.Var.Env".
module GHC.Types.Var.Env
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Var.Env as Upstream
#else
import "ghc" VarEnv as Upstream
#endif
