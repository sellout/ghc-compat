-- | Compatibility wrapper around ghc’s "GHC.Tc.Gen.Arrow".
module GHC.Tc.Gen.Arrow
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Gen.Arrow as Upstream
#else
import "ghc" TcArrows as Upstream
#endif
