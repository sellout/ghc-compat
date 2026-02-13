-- | Compatibility wrapper around ghc’s "GHC.SysTools.Process".
module GHC.SysTools.Process
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.SysTools.Process as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" SysTools.Process as Upstream
#else
import "this" Unresolved as Upstream
#endif
