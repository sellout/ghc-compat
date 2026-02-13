-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.Closure".
module GHC.StgToCmm.Closure
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.StgToCmm.Closure as Upstream
#else
import "ghc" StgCmmClosure as Upstream
#endif
