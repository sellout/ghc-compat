-- | Compatibility wrapper around ghc’s "GHC.Tc.Types.EvTerm".
module GHC.Tc.Types.EvTerm
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Types.EvTerm as Upstream
#else
import "ghc" TcEvTerm as Upstream
#endif
