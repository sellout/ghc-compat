-- | Compatibility wrapper around ghc’s "GHC.Types.Unique.Map".
module GHC.Types.Unique.Map
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "ghc" GHC.Types.Unique.Map as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" UniqMap as Upstream
#else
import "this" Unresolved as Upstream
#endif
