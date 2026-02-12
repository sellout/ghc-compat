-- | Compatibility wrapper around ghc’s "GHC.Tc.Deriv.Functor".
module GHC.Tc.Deriv.Functor
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Deriv.Functor as Upstream
#else
import "ghc" TcGenFunctor as Upstream
#endif
