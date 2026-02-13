-- | Compatibility wrapper around ghc’s "GHC.Tc.Types.Constraint".
module GHC.Tc.Types.Constraint
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Types.Constraint as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" Constraint as Upstream
#else
import "this" Unresolved as Upstream
#endif
