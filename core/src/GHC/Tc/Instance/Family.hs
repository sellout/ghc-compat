-- | Compatibility wrapper around ghc’s "GHC.Tc.Instance.Family".
module GHC.Tc.Instance.Family
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Instance.Family as Upstream
#else
import "ghc" FamInst as Upstream
#endif
