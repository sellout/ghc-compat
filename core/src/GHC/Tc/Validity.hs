-- | Compatibility wrapper around ghc’s "GHC.Tc.Validity".
module GHC.Tc.Validity
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Validity as Upstream
#else
import "ghc" TcValidity as Upstream
#endif
