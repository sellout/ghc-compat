-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.DataCon".
module GHC.StgToCmm.DataCon
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.StgToCmm.DataCon as Upstream
#else
import "ghc" StgCmmCon as Upstream
#endif
