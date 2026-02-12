-- | Compatibility wrapper around ghc’s "GHC.Tc.Deriv.Utils".
module GHC.Tc.Deriv.Utils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Deriv.Utils as Upstream
#else
import "ghc" TcDerivUtils as Upstream
#endif
