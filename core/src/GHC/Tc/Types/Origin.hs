-- | Compatibility wrapper around ghc’s "GHC.Tc.Types.Origin".
module GHC.Tc.Types.Origin
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Types.Origin as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" TcOrigin as Upstream
#else
import "this" Unresolved as Upstream
#endif
