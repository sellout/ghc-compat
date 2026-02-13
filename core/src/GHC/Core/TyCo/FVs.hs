-- | Compatibility wrapper around ghc’s "GHC.Core.TyCo.FVs".
module GHC.Core.TyCo.FVs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.TyCo.FVs as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" TyCoFVs as Upstream
#else
import "this" Unresolved as Upstream
#endif
