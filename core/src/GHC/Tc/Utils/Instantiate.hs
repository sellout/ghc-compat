-- | Compatibility wrapper around ghc’s "GHC.Tc.Utils.Instantiate".
module GHC.Tc.Utils.Instantiate
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Utils.Instantiate as Upstream
#else
import "ghc" Inst as Upstream
#endif
