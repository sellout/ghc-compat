-- | Compatibility wrapper around ghc’s "GHC.SysTools.FileCleanup".
module GHC.SysTools.FileCleanup
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.SysTools.FileCleanup as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" FileCleanup as Upstream
#else
import "this" Unresolved as Upstream
#endif
