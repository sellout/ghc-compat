-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.Prim".
module GHC.StgToCmm.Prim
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.StgToCmm.Prim as Upstream
#else
import "ghc" StgCmmPrim as Upstream
#endif
