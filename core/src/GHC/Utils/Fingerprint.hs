-- | Compatibility wrapper around ghc’s "GHC.Utils.Fingerprint".
module GHC.Utils.Fingerprint
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Fingerprint as Upstream
#else
import "ghc" Fingerprint as Upstream
#endif
