-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.CgUtils".
module GHC.StgToCmm.CgUtils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.StgToCmm.CgUtils as Upstream
#else
import "ghc" CgUtils as Upstream
#endif
