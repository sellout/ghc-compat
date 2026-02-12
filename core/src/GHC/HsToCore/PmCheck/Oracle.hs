-- | Compatibility wrapper around ghc’s "GHC.HsToCore.PmCheck.Oracle".
module GHC.HsToCore.PmCheck.Oracle
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.PmCheck.Oracle as Upstream
#else
import "ghc" PmOracle as Upstream
#endif
