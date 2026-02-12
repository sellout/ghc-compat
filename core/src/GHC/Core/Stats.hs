-- | Compatibility wrapper around ghc’s "GHC.Core.Stats".
module GHC.Core.Stats
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Stats as Upstream
#else
import "ghc" CoreStats as Upstream
#endif
