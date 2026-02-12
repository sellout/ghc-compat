-- | Compatibility wrapper around ghc’s "GHC.Core.FVs".
module GHC.Core.FVs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.FVs as Upstream
#else
import "ghc" CoreFVs as Upstream
#endif
