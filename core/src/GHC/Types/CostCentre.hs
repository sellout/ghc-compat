-- | Compatibility wrapper around ghc’s "GHC.Types.CostCentre".
module GHC.Types.CostCentre
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.CostCentre as Upstream
#else
import "ghc" CostCentre as Upstream
#endif
