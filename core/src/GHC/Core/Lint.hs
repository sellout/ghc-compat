-- | Compatibility wrapper around ghc’s "GHC.Core.Lint".
module GHC.Core.Lint
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Lint as Upstream
#else
import "ghc" CoreLint as Upstream
#endif
