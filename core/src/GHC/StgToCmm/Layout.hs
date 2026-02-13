-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.Layout".
module GHC.StgToCmm.Layout
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.StgToCmm.Layout as Upstream
#else
import "ghc" StgCmmLayout as Upstream
#endif
