-- | Compatibility wrapper around ghc’s "GHC.Core.Coercion".
module GHC.Core.Coercion
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Coercion as Upstream
#else
import "ghc" Coercion as Upstream
#endif
