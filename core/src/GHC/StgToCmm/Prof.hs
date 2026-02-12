-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.Prof".
module GHC.StgToCmm.Prof
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.StgToCmm.Prof as Upstream
#else
import "ghc" StgCmmProf as Upstream
#endif
