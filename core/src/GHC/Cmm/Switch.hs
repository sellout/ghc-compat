-- | Compatibility wrapper around ghc’s "GHC.Cmm.Switch".
module GHC.Cmm.Switch
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Switch as Upstream
#else
import "ghc" CmmSwitch as Upstream
#endif
