-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.Arity".
module GHC.Core.Opt.Arity
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.Arity as Upstream
#else
import "ghc" CoreArity as Upstream
#endif
