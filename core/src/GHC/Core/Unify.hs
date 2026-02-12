-- | Compatibility wrapper around ghc’s "GHC.Core.Unify".
module GHC.Core.Unify
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Unify as Upstream
#else
import "ghc" Unify as Upstream
#endif
