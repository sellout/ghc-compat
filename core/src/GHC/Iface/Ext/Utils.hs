-- | Compatibility wrapper around ghc’s "GHC.Iface.Ext.Utils".
module GHC.Iface.Ext.Utils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Ext.Utils as Upstream
#elif MIN_VERSION_ghc(8, 8, 0)
import "ghc" HieUtils as Upstream
#else
import "this" Unresolved as Upstream
#endif
