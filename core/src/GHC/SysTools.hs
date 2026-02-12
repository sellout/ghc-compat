-- | Compatibility wrapper around ghc’s "GHC.SysTools".
module GHC.SysTools
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.SysTools as Upstream
#else
import "ghc" SysTools as Upstream
#endif
