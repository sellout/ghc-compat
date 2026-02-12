-- | Compatibility wrapper around ghc’s "GHC.Tc.Gen.Pat".
module GHC.Tc.Gen.Pat
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Gen.Pat as Upstream
#else
import "ghc" TcPat as Upstream
#endif
