-- | Compatibility wrapper around ghc’s "GHC.SysTools.Ar".
module GHC.SysTools.Ar
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.SysTools.Ar as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" Ar as Upstream
#else
import "this" Unresolved as Upstream
#endif
