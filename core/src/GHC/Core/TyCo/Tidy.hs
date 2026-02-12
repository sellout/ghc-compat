-- | Compatibility wrapper around ghc’s "GHC.Core.TyCo.Tidy".
module GHC.Core.TyCo.Tidy
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.TyCo.Tidy as Upstream
#else
import "ghc" TyCoTidy as Upstream
#endif
