-- | Compatibility wrapper around ghc’s "GHC.Core.Unfold".
module GHC.Core.Unfold
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Unfold as Upstream
#else
import "ghc" CoreUnfold as Upstream
#endif
