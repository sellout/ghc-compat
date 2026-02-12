-- | Compatibility wrapper around ghc’s "GHC.Settings.IO".
module GHC.Settings.IO
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Settings.IO as Upstream
#else
import "ghc" SysTools.Settings as Upstream
#endif
