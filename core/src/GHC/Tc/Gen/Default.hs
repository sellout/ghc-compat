-- | Compatibility wrapper around ghc’s "GHC.Tc.Gen.Default".
module GHC.Tc.Gen.Default
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Gen.Default as Upstream
#else
import "ghc" TcDefaults as Upstream
#endif
