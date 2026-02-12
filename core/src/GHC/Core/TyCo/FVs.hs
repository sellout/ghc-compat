-- | Compatibility wrapper around ghc’s "GHC.Core.TyCo.FVs".
module GHC.Core.TyCo.FVs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.TyCo.FVs as Upstream
#else
import "ghc" TyCoFVs as Upstream
#endif
