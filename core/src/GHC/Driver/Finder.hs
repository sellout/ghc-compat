-- | Compatibility wrapper around ghc’s "GHC.Driver.Finder".
module GHC.Driver.Finder
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Finder as Upstream
#else
import "ghc" Finder as Upstream
#endif
