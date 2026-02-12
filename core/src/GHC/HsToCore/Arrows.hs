-- | Compatibility wrapper around ghc’s "GHC.HsToCore.Arrows".
module GHC.HsToCore.Arrows
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.Arrows as Upstream
#else
import "ghc" DsArrows as Upstream
#endif
