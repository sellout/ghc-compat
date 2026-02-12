-- | Compatibility wrapper around ghc’s "GHC.Driver.Make".
module GHC.Driver.Make
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Make as Upstream
#else
import "ghc" GhcMake as Upstream
#endif
