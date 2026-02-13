-- | Compatibility wrapper around ghc’s "GHC.Hs.Extension".
module GHC.Hs.Extension
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs.Extension as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" HsExtension as Upstream
#else
import "this" Unresolved as Upstream
#endif
