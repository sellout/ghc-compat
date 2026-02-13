-- | Compatibility wrapper around ghc’s "GHC.Cmm.Switch.Implement".
module GHC.Cmm.Switch.Implement
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Switch.Implement as Upstream
#elif MIN_VERSION_ghc(8, 0, 0)
import "ghc" CmmImplementSwitchPlans as Upstream
#else
import "this" Unresolved as Upstream
#endif
