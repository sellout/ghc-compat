-- | Compatibility wrapper around ghc’s "GHC.SysTools.FileCleanup".
module GHC.SysTools.FileCleanup
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.SysTools.FileCleanup as Upstream
#else
import "ghc" FileCleanup as Upstream
#endif
