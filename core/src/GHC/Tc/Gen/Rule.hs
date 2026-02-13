-- | Compatibility wrapper around ghc’s "GHC.Tc.Gen.Rule".
module GHC.Tc.Gen.Rule
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 14, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Gen.Rule as Upstream
#else
import "ghc" TcRules as Upstream
#endif
