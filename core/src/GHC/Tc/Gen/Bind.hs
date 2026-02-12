-- | Compatibility wrapper around ghc’s "GHC.Tc.Gen.Bind".
module GHC.Tc.Gen.Bind
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Gen.Bind as Upstream
#else
import "ghc" TcBinds as Upstream
#endif
