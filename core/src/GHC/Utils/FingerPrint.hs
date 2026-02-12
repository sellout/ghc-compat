-- | Compatibility wrapper around ghc’s "GHC.Utils.FingerPrint".
module GHC.Utils.FingerPrint
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.FingerPrint as Upstream
#else
import "ghc" Fingerprint as Upstream
#endif
