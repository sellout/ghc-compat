-- | Compatibility wrapper around ghc’s "GHC.Tc.Solver.Flatten".
module GHC.Tc.Solver.Flatten
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Solver.Flatten as Upstream
#else
import "ghc" TcFlatten as Upstream
#endif
