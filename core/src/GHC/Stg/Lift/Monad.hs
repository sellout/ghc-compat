-- | Compatibility wrapper around ghc’s "GHC.Stg.Lift.Monad".
module GHC.Stg.Lift.Monad
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Stg.Lift.Monad as Upstream
#elif MIN_VERSION_ghc(8, 8, 0)
import "ghc" StgLiftLams.LiftM as Upstream
#else
import "this" Unresolved as Upstream
#endif
