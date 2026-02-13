-- | Compatibility wrapper around ghc’s "GHC.Unit.State".
module GHC.Unit.State
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Unit.State as Upstream
#else
import "ghc" Packages as Upstream
#endif
