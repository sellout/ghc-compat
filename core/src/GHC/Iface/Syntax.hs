-- | Compatibility wrapper around ghc’s "GHC.Iface.Syntax".
module GHC.Iface.Syntax
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Syntax as Upstream
#else
import "ghc" IfaceSyn as Upstream
#endif
