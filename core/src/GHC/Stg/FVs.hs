-- | Compatibility wrapper around ghc’s "GHC.Stg.FVs".
module GHC.Stg.FVs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Stg.FVs as Upstream
#else
import "ghc" StgFVs as Upstream
#endif
