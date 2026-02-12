-- | Compatibility wrapper around ghc’s "GHC.Tc.Instance.FunDeps".
module GHC.Tc.Instance.FunDeps
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Instance.FunDeps as Upstream
#else
import "ghc" FunDeps as Upstream
#endif
