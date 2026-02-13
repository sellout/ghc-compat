-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.Ticky".
module GHC.StgToCmm.Ticky
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.StgToCmm.Ticky as Upstream
#else
import "ghc" StgCmmTicky as Upstream
#endif
