-- | Compatibility wrapper around ghc’s "GHC.HsToCore.Utils".
module GHC.HsToCore.Utils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.Utils as Upstream
#else
import "ghc" DsUtils as Upstream
#endif
