-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.Heap".
module GHC.StgToCmm.Heap
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.StgToCmm.Heap as Upstream
#else
import "ghc" StgCmmHeap as Upstream
#endif
