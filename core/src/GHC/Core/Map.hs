-- | Compatibility wrapper around ghc’s "GHC.Core.Map".
module GHC.Core.Map
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 4, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Map as Upstream
#else
import "ghc" CoreMap as Upstream
#endif
