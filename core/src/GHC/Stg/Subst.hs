-- | Compatibility wrapper around ghc’s "GHC.Stg.Subst".
module GHC.Stg.Subst
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Stg.Subst as Upstream
#elif MIN_VERSION_ghc(8, 8, 0)
import "ghc" StgSubst as Upstream
#else
import "this" Unresolved as Upstream
#endif
