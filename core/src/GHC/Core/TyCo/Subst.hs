-- | Compatibility wrapper around ghc’s "GHC.Core.TyCo.Subst".
module GHC.Core.TyCo.Subst
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.TyCo.Subst as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" TyCoSubst as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "this" Unresolved as Upstream
#else
import "ghc" TyCoSubst as Upstream
#endif
