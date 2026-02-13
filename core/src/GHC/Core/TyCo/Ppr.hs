-- | Compatibility wrapper around ghc’s "GHC.Core.TyCo.Ppr".
module GHC.Core.TyCo.Ppr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.TyCo.Ppr as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" TyCoPpr as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "this" Unresolved as Upstream
#else
import "ghc" TyCoPpr as Upstream
#endif
