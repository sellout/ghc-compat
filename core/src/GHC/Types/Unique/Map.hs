-- | Compatibility wrapper around ghc’s "GHC.Types.Unique.Map".
module GHC.Types.Unique.Map
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Unique.Map as Upstream
#else
import "ghc" UniqMap as Upstream
#endif
