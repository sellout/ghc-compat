-- | Compatibility wrapper around ghc’s "GHC.HsToCore.Docs".
module GHC.HsToCore.Docs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.Docs as Upstream
#elif MIN_VERSION_ghc(8, 6, 0)
import "ghc" ExtractDocs as Upstream
#else
import "this" Unresolved as Upstream
#endif
