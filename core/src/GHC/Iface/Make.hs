-- | Compatibility wrapper around ghc’s "GHC.Iface.Make".
module GHC.Iface.Make
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Make as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Iface.Utils as Upstream
#else
import "ghc" MkIface as Upstream
#endif
