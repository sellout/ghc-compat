-- | Compatibility wrapper around ghc’s "GHC.HsToCore".
module GHC.HsToCore
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore as Upstream
#else
import "ghc" Desugar as Upstream
#endif
