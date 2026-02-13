-- | Compatibility wrapper around ghc’s "GHC.HsToCore.PmCheck.Oracle".
module GHC.HsToCore.PmCheck.Oracle
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.HsToCore.PmCheck.Oracle as Upstream
#else
import "this" Unresolved as Upstream
#endif
-- import "ghc" PmOracle as Upstream
