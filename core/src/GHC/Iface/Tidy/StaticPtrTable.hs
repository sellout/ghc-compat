-- | Compatibility wrapper around ghc’s "GHC.Iface.Tidy.StaticPtrTable".
module GHC.Iface.Tidy.StaticPtrTable
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Tidy.StaticPtrTable as Upstream
#else
import "ghc" StaticPtrTable as Upstream
#endif
