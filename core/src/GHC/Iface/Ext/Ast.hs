-- | Compatibility wrapper around ghc’s "GHC.Iface.Ext.Ast".
module GHC.Iface.Ext.Ast
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Ext.Ast as Upstream
#else
import "ghc" HieAst as Upstream
#endif
