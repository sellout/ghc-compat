-- | Compatibility wrapper around ghc’s "GHC.Hs.Extension".
module GHC.Hs.Extension
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Hs.Extension as Upstream
#else
import "ghc" HsExtension as Upstream
#endif
