-- | Compatibility wrapper around ghc’s "GHC.Runtime.Heap.Layout".
module GHC.Runtime.Heap.Layout
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Runtime.Heap.Layout as Upstream
#else
import "ghc" SMRep as Upstream
#endif
