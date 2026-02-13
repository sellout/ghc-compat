-- | Compatibility wrapper around ghc’s "GHC.Hs.Pat".
module GHC.Hs.Pat
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs.Pat as Upstream
#else
import "ghc" HsPat as Upstream
#endif
