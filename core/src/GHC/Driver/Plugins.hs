-- | Compatibility wrapper around ghc’s "GHC.Driver.Plugins".
module GHC.Driver.Plugins
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Plugins as Upstream
#else
import "ghc" Plugins as Upstream
#endif
