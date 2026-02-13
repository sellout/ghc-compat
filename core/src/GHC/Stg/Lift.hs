-- | Compatibility wrapper around ghc’s "GHC.Stg.Lift".
module GHC.Stg.Lift
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Stg.Lift as Upstream
#elif MIN_VERSION_ghc(8, 8, 0)
import "ghc" StgLiftLams as Upstream
import "ghc" StgLiftLams.Transformation ()
#else
import "this" Unresolved as Upstream
#endif
