-- | Compatibility wrapper around ghc’s "GHC.Types.Demand".
module GHC.Types.Demand
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Demand as Upstream
#else
import "ghc" Demand as Upstream
#endif
