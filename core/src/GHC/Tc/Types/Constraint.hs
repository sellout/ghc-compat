-- | Compatibility wrapper around ghc’s "GHC.Tc.Types.Constraint".
module GHC.Tc.Types.Constraint
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Types.Constraint as Upstream
#else
import "ghc" Constraint as Upstream
#endif
