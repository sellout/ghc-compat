-- | Compatibility wrapper around ghc’s "GHC.SysTools.Terminal".
module GHC.SysTools.Terminal
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.SysTools.Terminal as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" SysTools.Terminal as Upstream
#else
import "this" Unresolved as Upstream
#endif
