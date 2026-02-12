-- | Compatibility wrapper around ghc’s "GHC.Core.Subst".
module GHC.Core.Subst
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Subst as Upstream
#else
import "ghc" CoreSubst as Upstream
#endif
