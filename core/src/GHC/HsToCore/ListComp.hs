-- | Compatibility wrapper around ghc’s "GHC.HsToCore.ListComp".
module GHC.HsToCore.ListComp
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.ListComp as Upstream
#else
import "ghc" DsListComp as Upstream
#endif
