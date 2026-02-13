-- | Compatibility wrapper around ghc’s "GHC.Driver.Packages".
module GHC.Driver.Packages
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 4, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Packages as Upstream
#else
import "ghc" Packages as Upstream
#endif
