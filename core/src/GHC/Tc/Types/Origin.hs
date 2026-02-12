-- | Compatibility wrapper around ghc’s "GHC.Tc.Types.Origin".
module GHC.Tc.Types.Origin
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Types.Origin as Upstream
#else
import "ghc" TcOrigin as Upstream
#endif
