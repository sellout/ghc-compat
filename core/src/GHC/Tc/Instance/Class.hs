-- | Compatibility wrapper around ghc’s "GHC.Tc.Instance.Class".
module GHC.Tc.Instance.Class
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Instance.Class as Upstream
#elif MIN_VERSION_ghc(8, 8, 0)
import "ghc" ClsInst as Upstream
#else
import "this" Unresolved as Upstream
#endif
