-- | Compatibility wrapper around ghc’s "GHC.Iface.Load".
module GHC.Iface.Load
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Load as Upstream
#else
import "ghc" LoadIface as Upstream
#endif
