-- | Compatibility wrapper around ghc’s "GHC.Utils.Outputable".
module GHC.Utils.Outputable
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Outputable as Upstream
#else
import "ghc" Outputable as Upstream
#endif
