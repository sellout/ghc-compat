-- | Compatibility wrapper around ghc’s "GHC.Tc.Utils.Backpack".
module GHC.Tc.Utils.Backpack
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Utils.Backpack as Upstream
#else
import "ghc" TcBackpack as Upstream
#endif
