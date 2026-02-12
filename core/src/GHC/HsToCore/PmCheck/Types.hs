-- | Compatibility wrapper around ghc’s "GHC.HsToCore.PmCheck.Types".
module GHC.HsToCore.PmCheck.Types
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.PmCheck.Types as Upstream
#else
import "ghc" PmTypes as Upstream
#endif
