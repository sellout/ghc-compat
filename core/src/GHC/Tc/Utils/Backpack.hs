-- | Compatibility wrapper around ghc’s "GHC.Tc.Utils.Backpack".
module GHC.Tc.Utils.Backpack
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Utils.Backpack as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" TcBackpack as Upstream
#else
import "this" Unresolved as Upstream
#endif
