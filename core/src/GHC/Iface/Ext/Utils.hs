-- | Compatibility wrapper around ghc’s "GHC.Iface.Ext.Utils".
module GHC.Iface.Ext.Utils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Ext.Utils as Upstream
#else
import "ghc" HieUtils as Upstream
#endif
