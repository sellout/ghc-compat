-- | Compatibility wrapper around ghc’s "GHC.Iface.Binary".
module GHC.Iface.Binary
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Binary as Upstream
#else
import "ghc" BinIface as Upstream
#endif
