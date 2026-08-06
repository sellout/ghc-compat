-- | Compatibility wrapper around ghc’s "GHC.Unit.Module.ModIface".
module GHC.Unit.Module.ModIface
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "ghc" GHC.Unit.Module.ModIface as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Types as Upstream
#else
import "ghc" HscTypes as Upstream
#endif
