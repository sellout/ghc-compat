-- | Compatibility wrapper around ghc’s "GHC.HsToCore.Usage".
module GHC.HsToCore.Usage
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.Usage as Upstream
#else
import "ghc" DsUsage as Upstream
#endif
