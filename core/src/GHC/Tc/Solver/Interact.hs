-- | Compatibility wrapper around ghc’s "GHC.Tc.Solver.Interact".
module GHC.Tc.Solver.Interact
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Solver.Interact as Upstream
#else
import "ghc" TcInteract as Upstream
#endif
