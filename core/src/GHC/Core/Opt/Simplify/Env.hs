-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.Simplify.Env".
module GHC.Core.Opt.Simplify.Env
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.Simplify.Env as Upstream
#else
import "ghc" SimplEnv as Upstream
#endif
