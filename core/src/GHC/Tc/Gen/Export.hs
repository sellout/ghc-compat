-- | Compatibility wrapper around ghc’s "GHC.Tc.Gen.Export".
module GHC.Tc.Gen.Export
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Gen.Export as Upstream
#else
import "ghc" TcRnExports as Upstream
#endif
