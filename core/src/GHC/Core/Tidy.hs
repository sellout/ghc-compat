-- | Compatibility wrapper around ghc’s "GHC.Core.Tidy".
module GHC.Core.Tidy
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Tidy as Upstream
#else
import "ghc" CoreTidy as Upstream
#endif
