-- | Compatibility wrapper around ghc’s "GHC.Stg.Subst".
module GHC.Stg.Subst
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Stg.Subst as Upstream
#else
import "ghc" StgSubst as Upstream
#endif
