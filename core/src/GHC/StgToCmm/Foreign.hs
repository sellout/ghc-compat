-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.Foreign".
module GHC.StgToCmm.Foreign
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.StgToCmm.Foreign as Upstream
#else
import "ghc" StgCmmForeign as Upstream
#endif
