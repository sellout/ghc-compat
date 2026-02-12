-- | Compatibility wrapper around ghc’s "GHC.Iface.Ext.Debug".
module GHC.Iface.Ext.Debug
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Ext.Debug as Upstream
#else
import "ghc" HieDebug as Upstream
#endif
