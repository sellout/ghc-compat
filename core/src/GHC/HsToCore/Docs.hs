-- | Compatibility wrapper around ghc’s "GHC.HsToCore.Docs".
module GHC.HsToCore.Docs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.Docs as Upstream
#else
import "ghc" ExtractDocs as Upstream
#endif
