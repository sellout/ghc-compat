-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.SpecConstr".
module GHC.Core.Opt.SpecConstr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.SpecConstr as Upstream
#else
import "ghc" SpecConstr as Upstream
#endif
