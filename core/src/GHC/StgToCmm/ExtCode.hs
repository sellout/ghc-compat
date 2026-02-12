-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.ExtCode".
module GHC.StgToCmm.ExtCode
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.StgToCmm.ExtCode as Upstream
#else
import "ghc" StgCmmExtCode as Upstream
#endif
