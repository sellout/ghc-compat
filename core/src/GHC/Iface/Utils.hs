-- | Compatibility wrapper around ghc’s "GHC.Iface.Utils".
module GHC.Iface.Utils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 4, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Utils as Upstream
#else
import "ghc" MkIface as Upstream
#endif
