-- | Compatibility wrapper around ghc’s "GHC.Types.CostCentre.State".
module GHC.Types.CostCentre.State
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.CostCentre.State as Upstream
#else
import "ghc" CostCentreState as Upstream
#endif
