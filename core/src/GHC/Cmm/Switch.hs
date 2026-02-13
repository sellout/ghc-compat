-- | Compatibility wrapper around ghc’s "GHC.Cmm.Switch".
module GHC.Cmm.Switch
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Switch as Upstream
#elif MIN_VERSION_ghc(8, 0, 0)
import "ghc" CmmSwitch as Upstream
#else
import "this" Unresolved as Upstream
#endif
