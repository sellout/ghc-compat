-- | Compatibility wrapper around ghc’s "GHC.Types.Unique.Supply".
module GHC.Types.Unique.Supply
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Unique.Supply as Upstream
#else
import "ghc" UniqSupply as Upstream
#endif
