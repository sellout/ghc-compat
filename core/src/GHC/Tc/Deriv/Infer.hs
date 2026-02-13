-- | Compatibility wrapper around ghc’s "GHC.Tc.Deriv.Infer".
module GHC.Tc.Deriv.Infer
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Deriv.Infer as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" TcDerivInfer as Upstream
#else
import "this" Unresolved as Upstream
#endif
