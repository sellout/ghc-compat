-- | Compatibility wrapper around ghc’s "GHC.Iface.Ext.Ast".
module GHC.Iface.Ext.Ast
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Ext.Ast as Upstream
#elif MIN_VERSION_ghc(8, 8, 0)
import "ghc" HieAst as Upstream
#else
import "this" Unresolved as Upstream
#endif
