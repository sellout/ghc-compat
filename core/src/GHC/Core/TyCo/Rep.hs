-- | Compatibility wrapper around ghc’s "GHC.Core.TyCo.Rep".
module GHC.Core.TyCo.Rep
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.TyCo.Rep as Upstream
#else
import "ghc" TyCoRep as Upstream
#endif
