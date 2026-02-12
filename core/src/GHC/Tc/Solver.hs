-- | Compatibility wrapper around ghc’s "GHC.Tc.Solver".
module GHC.Tc.Solver
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Solver as Upstream
#else
import "ghc" TcSimplify as Upstream
#endif
