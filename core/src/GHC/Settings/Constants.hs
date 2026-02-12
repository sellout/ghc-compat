-- | Compatibility wrapper around ghc’s "GHC.Settings.Constants".
module GHC.Settings.Constants
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Settings.Constants as Upstream
#else
import "ghc" Constants as Upstream
#endif
