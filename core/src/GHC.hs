-- | Compatibility wrapper around ghc’s "GHC".
module GHC
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC as Upstream
#else
import "ghc" GHC as Upstream
#endif
