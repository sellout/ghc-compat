-- | Compatibility wrapper around ghc’s "GHC.Hs".
module GHC.Hs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Hs as Upstream
#else
import "ghc" HsSyn as Upstream
#endif
