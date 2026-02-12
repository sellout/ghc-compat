-- | Compatibility wrapper around ghc’s "GHC.Tc.Deriv".
module GHC.Tc.Deriv
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Deriv as Upstream
#else
import "ghc" TcDeriv as Upstream
#endif
