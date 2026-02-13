-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.Hpc".
module GHC.StgToCmm.Hpc
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.StgToCmm.Hpc as Upstream
#else
import "ghc" StgCmmHpc as Upstream
#endif
