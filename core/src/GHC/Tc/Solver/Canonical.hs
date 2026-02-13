-- | Compatibility wrapper around ghc’s "GHC.Tc.Solver.Canonical".
module GHC.Tc.Solver.Canonical
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 8, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Solver.Canonical as Upstream
#else
import "ghc" TcCanonical as Upstream
#endif
