-- | Compatibility wrapper around ghc’s "GHC.Driver.Backpack".
module GHC.Driver.Backpack
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Backpack as Upstream
#else
import "ghc" DriverBkp as Upstream
#endif
