-- | Compatibility wrapper around ghc’s "GHC.Iface.Ext.Binary".
module GHC.Iface.Ext.Binary
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Ext.Binary as Upstream
#elif MIN_VERSION_ghc(8, 8, 0)
import "ghc" HieBin as Upstream
#else
import "this" Unresolved as Upstream
#endif
