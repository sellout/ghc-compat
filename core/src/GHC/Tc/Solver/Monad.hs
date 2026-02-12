-- | Compatibility wrapper around ghc’s "GHC.Tc.Solver.Monad".
module GHC.Tc.Solver.Monad
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Solver.Monad as Upstream
#else
import "ghc" TcSMonad as Upstream
#endif
