-- | Compatibility wrapper around ghc’s "GHC.SysTools.Terminal".
module GHC.SysTools.Terminal
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.SysTools.Terminal as Upstream
#else
import "ghc" SysTools.Terminal as Upstream
#endif
