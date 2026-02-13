-- | Compatibility wrapper around ghc’s "GHC.Unit.Info".
module GHC.Unit.Info
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Unit.Info as Upstream
#else
import "ghc" PackageConfig as Upstream
#endif
