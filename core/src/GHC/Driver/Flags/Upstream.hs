-- | Compatibility wrapper around ghc’s "GHC.Driver.Flags".
module GHC.Driver.Flags.Upstream
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Flags as Upstream
#else
import "ghc" DynFlags as Upstream
#endif
