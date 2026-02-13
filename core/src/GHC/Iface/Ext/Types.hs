-- | Compatibility wrapper around ghc’s "GHC.Iface.Ext.Types".
module GHC.Iface.Ext.Types
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Ext.Types as Upstream
#elif MIN_VERSION_ghc(8, 8, 0)
import "ghc" HieTypes as Upstream
#else
import "this" Unresolved as Upstream
#endif
