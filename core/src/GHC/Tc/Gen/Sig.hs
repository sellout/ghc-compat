-- | Compatibility wrapper around ghc’s "GHC.Tc.Gen.Sig".
module GHC.Tc.Gen.Sig
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Gen.Sig as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" TcSigs as Upstream
#else
import "this" Unresolved as Upstream
#endif
