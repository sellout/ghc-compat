-- | Compatibility wrapper around ghc’s "GHC.Iface.Recomp.Binary".
module GHC.Iface.Recomp.Binary
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Recomp.Binary as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" BinFingerprint as Upstream
#else
import "this" Unresolved as Upstream
#endif
