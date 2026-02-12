-- | Compatibility wrapper around ghc’s "GHC.Hs.Stats".
module GHC.Hs.Stats
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Hs.Stats as Upstream
#else
import "ghc" HscStats as Upstream
#endif
