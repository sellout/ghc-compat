-- | Compatibility wrapper around ghc’s "GHC.Runtime.Heap.Inspect".
module GHC.Runtime.Heap.Inspect
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Runtime.Heap.Inspect as Upstream
#else
import "ghc" RtClosureInspect as Upstream
#endif
