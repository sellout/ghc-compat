-- | Compatibility wrapper around ghc’s "GHC.HsToCore.Quote".
module GHC.HsToCore.Quote
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.Quote as Upstream
#else
import "ghc" DsMeta as Upstream
#endif
