-- | Compatibility wrapper around ghc’s "GHC.HsToCore.PmCheck".
module GHC.HsToCore.PmCheck
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 4, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.PmCheck as Upstream
#else
import "ghc" Check as Upstream
#endif
