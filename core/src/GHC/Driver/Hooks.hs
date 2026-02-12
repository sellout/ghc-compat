-- | Compatibility wrapper around ghc’s "GHC.Driver.Hooks".
module GHC.Driver.Hooks
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Hooks as Upstream
#else
import "ghc" Hooks as Upstream
#endif
