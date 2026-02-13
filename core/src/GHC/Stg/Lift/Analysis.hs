-- | Compatibility wrapper around ghc’s "GHC.Stg.Lift.Analysis".
module GHC.Stg.Lift.Analysis
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Stg.Lift.Analysis as Upstream
#elif MIN_VERSION_ghc(8, 8, 0)
import "ghc" StgLiftLams.Analysis as Upstream
#else
import "this" Unresolved as Upstream
#endif
