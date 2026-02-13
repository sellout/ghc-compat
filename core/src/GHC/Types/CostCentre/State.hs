-- | Compatibility wrapper around ghc’s "GHC.Types.CostCentre.State".
module GHC.Types.CostCentre.State
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.CostCentre.State as Upstream
#elif MIN_VERSION_ghc(8, 6, 0)
import "ghc" CostCentreState as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" CostCentreState as Upstream
#else
import "this" Unresolved as Upstream
#endif
