-- | Compatibility wrapper around ghc’s "GHC.Core.SimpleOpt".
module GHC.Core.SimpleOpt
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.SimpleOpt as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" CoreOpt as Upstream
#else
import "this" Unresolved as Upstream
#endif
