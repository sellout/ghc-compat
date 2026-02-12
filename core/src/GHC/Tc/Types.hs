-- | Compatibility wrapper around ghc’s "GHC.Tc.Types".
module GHC.Tc.Types
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Types as Upstream
#else
import "ghc" TcRnTypes as Upstream
#endif
