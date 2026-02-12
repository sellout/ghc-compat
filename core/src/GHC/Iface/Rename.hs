-- | Compatibility wrapper around ghc’s "GHC.Iface.Rename".
module GHC.Iface.Rename
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Rename as Upstream
#else
import "ghc" RnModIface as Upstream
#endif
