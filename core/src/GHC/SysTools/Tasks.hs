-- | Compatibility wrapper around ghc’s "GHC.SysTools.Tasks".
module GHC.SysTools.Tasks
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.SysTools.Tasks as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" SysTools.Tasks as Upstream
#else
import "this" Unresolved as Upstream
#endif
