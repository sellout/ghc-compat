-- | Compatibility wrapper around ghc’s "GHC.Tc.Errors.Hole.FitTypes".
module GHC.Tc.Errors.Hole.FitTypes
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Errors.Hole.FitTypes as Upstream
#else
import "ghc" TcHoleFitTypes as Upstream
#endif
