-- | Compatibility wrapper around ghc’s "GHC.Tc.Utils.Unify".
module GHC.Tc.Utils.Unify
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Utils.Unify as Upstream
#else
import "ghc" TcUnify as Upstream
#endif
