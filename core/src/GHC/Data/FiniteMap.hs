-- | Compatibility wrapper around ghc’s "GHC.Data.FiniteMap".
module GHC.Data.FiniteMap
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.FiniteMap as Upstream
#else
import "ghc" FiniteMap as Upstream
#endif
