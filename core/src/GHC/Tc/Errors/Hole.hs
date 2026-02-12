-- | Compatibility wrapper around ghc’s "GHC.Tc.Errors.Hole".
module GHC.Tc.Errors.Hole
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Errors.Hole as Upstream
#else
import "ghc" TcHoleErrors as Upstream
#endif
