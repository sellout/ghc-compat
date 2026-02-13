-- | Compatibility wrapper around ghc’s "GHC.Tc.Errors.Hole.FitTypes".
module GHC.Tc.Errors.Hole.FitTypes
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Errors.Hole.FitTypes as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" TcHoleFitTypes as Upstream
#else
import "this" Unresolved as Upstream
#endif
