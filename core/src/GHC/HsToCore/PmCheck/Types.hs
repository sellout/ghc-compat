-- | Compatibility wrapper around ghc’s "GHC.HsToCore.PmCheck.Types".
module GHC.HsToCore.PmCheck.Types
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.HsToCore.PmCheck.Types as Upstream
#else
import "this" Unresolved as Upstream
#endif
-- import "ghc" PmTypes as Upstream
