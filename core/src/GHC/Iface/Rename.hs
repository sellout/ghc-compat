-- | Compatibility wrapper around ghc’s "GHC.Iface.Rename".
module GHC.Iface.Rename
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Rename as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" RnModIface as Upstream
#else
import "this" Unresolved as Upstream
#endif
