-- | Compatibility wrapper around ghc’s "GHC.SysTools.Info".
module GHC.SysTools.Info
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.SysTools.Info as Upstream
#else
import "ghc" SysTools.Info as Upstream
#endif
