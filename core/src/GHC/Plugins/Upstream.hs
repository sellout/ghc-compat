-- | Compatibility wrapper around ghc’s "GHC.Plugins".
module GHC.Plugins.Upstream
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Plugins as Upstream
#else
import "ghc" GhcPlugins as Upstream
#endif
