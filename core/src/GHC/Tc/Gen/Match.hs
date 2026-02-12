-- | Compatibility wrapper around ghc’s "GHC.Tc.Gen.Match".
module GHC.Tc.Gen.Match
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Gen.Match as Upstream
#else
import "ghc" TcMatches as Upstream
#endif
