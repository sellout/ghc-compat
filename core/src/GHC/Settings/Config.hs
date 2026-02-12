-- | Compatibility wrapper around ghc’s "GHC.Settings.Config".
module GHC.Settings.Config
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Settings.Config as Upstream
#else
import "ghc" Config as Upstream
#endif
