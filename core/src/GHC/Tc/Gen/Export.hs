-- | Compatibility wrapper around ghc’s "GHC.Tc.Gen.Export".
module GHC.Tc.Gen.Export
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Gen.Export as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" TcRnExports as Upstream
#else
import "this" Unresolved as Upstream
#endif
