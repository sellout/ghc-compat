-- | Compatibility wrapper around ghc’s "GHC.HsToCore.Coverage".
module GHC.HsToCore.Coverage
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.Coverage as Upstream
#else
import "ghc" Coverage as Upstream
#endif
