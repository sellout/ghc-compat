-- | Compatibility wrapper around ghc’s "GHC.Iface.UpdateCafInfos".
module GHC.Iface.UpdateCafInfos
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 4, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.UpdateCafInfos as Upstream
#else
import "ghc" UpdateCafInfos as Upstream
#endif
