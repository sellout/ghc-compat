-- | Compatibility wrapper around ghc’s "GHC.Tc.Types.Evidence".
module GHC.Tc.Types.Evidence
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Types.Evidence as Upstream
#else
import "ghc" TcEvidence as Upstream
#endif
