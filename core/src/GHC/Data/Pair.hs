-- | Compatibility wrapper around ghc’s "GHC.Data.Pair".
module GHC.Data.Pair
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.Pair as Upstream
#else
import "ghc" Pair as Upstream
#endif
