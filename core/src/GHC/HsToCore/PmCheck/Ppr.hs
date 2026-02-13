-- | Compatibility wrapper around ghc’s "GHC.HsToCore.PmCheck.Ppr".
module GHC.HsToCore.PmCheck.Ppr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 4, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.PmCheck.Ppr as Upstream
#else
import "ghc" PmPpr as Upstream
#endif
