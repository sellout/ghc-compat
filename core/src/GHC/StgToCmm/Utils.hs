-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.Utils".
module GHC.StgToCmm.Utils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.StgToCmm.Utils as Upstream
#else
import "ghc" StgCmmUtils as Upstream
#endif
