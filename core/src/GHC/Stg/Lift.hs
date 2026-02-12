-- | Compatibility wrapper around ghc’s "GHC.Stg.Lift".
module GHC.Stg.Lift
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Stg.Lift as Upstream
#else
import "ghc" StgLiftLams as Upstream
#endif
