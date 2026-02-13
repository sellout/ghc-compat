-- | Compatibility wrapper around ghc’s "GHC.Core.Map".
module GHC.Core.Map
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Map as Upstream
#elif MIN_VERSION_ghc(8, 6, 0)
import "ghc" CoreMap as Upstream
#else
import "this" Unresolved as Upstream
#endif
