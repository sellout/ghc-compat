-- | Compatibility wrapper around ghc’s "GHC.Tc.Deriv.Generate".
module GHC.Tc.Deriv.Generate
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Deriv.Generate as Upstream
#else
import "ghc" TcGenDeriv as Upstream
#endif
