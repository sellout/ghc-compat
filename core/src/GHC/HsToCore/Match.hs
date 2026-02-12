-- | Compatibility wrapper around ghc’s "GHC.HsToCore.Match".
module GHC.HsToCore.Match
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.Match as Upstream
#else
import "ghc" Match as Upstream
#endif
