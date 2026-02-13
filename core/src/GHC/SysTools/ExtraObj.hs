-- | Compatibility wrapper around ghc’s "GHC.SysTools.ExtraObj".
module GHC.SysTools.ExtraObj
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 4, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.SysTools.ExtraObj as Upstream
#else
import "ghc" SysTools.ExtraObj as Upstream
#endif
