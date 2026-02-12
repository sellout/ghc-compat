-- | Compatibility wrapper around ghc’s "GHC.Stg.Lint".
module GHC.Stg.Lint
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Stg.Lint as Upstream
#else
import "ghc" StgLint as Upstream
#endif
