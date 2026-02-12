-- | Compatibility wrapper around ghc’s "GHC.Iface.Recomp.Flags".
module GHC.Iface.Recomp.Flags
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Recomp.Flags as Upstream
#else
import "ghc" FlagChecker as Upstream
#endif
