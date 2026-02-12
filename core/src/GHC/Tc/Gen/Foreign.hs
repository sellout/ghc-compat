-- | Compatibility wrapper around ghc’s "GHC.Tc.Gen.Foreign".
module GHC.Tc.Gen.Foreign
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Gen.Foreign as Upstream
#else
import "ghc" TcForeign as Upstream
#endif
