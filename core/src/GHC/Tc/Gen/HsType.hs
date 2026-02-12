-- | Compatibility wrapper around ghc’s "GHC.Tc.Gen.HsType".
module GHC.Tc.Gen.HsType
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Gen.HsType as Upstream
#else
import "ghc" TcHsType as Upstream
#endif
