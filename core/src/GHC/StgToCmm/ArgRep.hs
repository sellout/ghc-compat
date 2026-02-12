-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.ArgRep".
module GHC.StgToCmm.ArgRep
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.StgToCmm.ArgRep as Upstream
#else
import "ghc" StgCmmArgRep as Upstream
#endif
