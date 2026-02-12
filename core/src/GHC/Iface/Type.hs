-- | Compatibility wrapper around ghc’s "GHC.Iface.Type".
module GHC.Iface.Type
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Type as Upstream
#else
import "ghc" IfaceType as Upstream
#endif
