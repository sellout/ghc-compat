-- | Compatibility wrapper around ghc’s "GHC.Core.TyCo.Tidy".
module GHC.Core.TyCo.Tidy
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.TyCo.Tidy as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" TyCoTidy as Upstream
#else
import "this" Unresolved as Upstream
#endif
