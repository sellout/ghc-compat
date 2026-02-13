-- | Compatibility wrapper around ghc’s "GHC.Settings.IO".
module GHC.Settings.IO
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Settings.IO as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" SysTools.Settings as Upstream
#else
import "this" Unresolved as Upstream
#endif
