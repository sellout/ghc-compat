-- | Compatibility wrapper around ghc’s "GHC.StgToCmm".
module GHC.StgToCmm
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.StgToCmm as Upstream
#else
import "ghc" StgCmm as Upstream
#endif
