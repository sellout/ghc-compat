-- | Compatibility wrapper around ghc’s "GHC.Tc.Types.EvTerm".
module GHC.Tc.Types.EvTerm
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 14, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Types.EvTerm as Upstream
#elif MIN_VERSION_ghc(8, 6, 0)
import "ghc" TcEvTerm as Upstream
#else
import "this" Unresolved as Upstream
#endif
