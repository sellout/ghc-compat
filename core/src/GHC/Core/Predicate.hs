-- | Compatibility wrapper around ghc’s "GHC.Core.Predicate".
module GHC.Core.Predicate
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Predicate as Upstream
#else
import "ghc" Predicate as Upstream
#endif
