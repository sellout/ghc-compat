-- | Compatibility wrapper around ghc’s "GHC.Stg.Stats".
module GHC.Stg.Stats
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Stg.Stats as Upstream
#else
import "ghc" StgStats as Upstream
#endif
