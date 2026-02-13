-- | Compatibility wrapper around ghc’s "GHC.SysTools.Info".
module GHC.SysTools.Info
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 10, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.SysTools.Info as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" SysTools.Info as Upstream
#else
import "this" Unresolved as Upstream
#endif
