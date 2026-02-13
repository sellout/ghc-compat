-- | Compatibility wrapper around ghc’s "GHC.Core.Predicate".
module GHC.Core.Predicate
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Predicate as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" Predicate as Upstream
#else
import "this" Unresolved as Upstream
#endif
