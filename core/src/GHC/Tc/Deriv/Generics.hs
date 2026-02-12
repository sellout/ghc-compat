-- | Compatibility wrapper around ghc’s "GHC.Tc.Deriv.Generics".
module GHC.Tc.Deriv.Generics
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Deriv.Generics as Upstream
#else
import "ghc" TcGenGenerics as Upstream
#endif
