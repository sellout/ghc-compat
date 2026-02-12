-- | Compatibility wrapper around ghc’s "GHC.HsToCore.GuardedRHSs".
module GHC.HsToCore.GuardedRHSs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.GuardedRHSs as Upstream
#else
import "ghc" DsGRHSs as Upstream
#endif
