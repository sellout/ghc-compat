-- | Compatibility wrapper around ghc’s "GHC.Types.Cpr".
module GHC.Types.Cpr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Cpr as Upstream
#else
import "ghc" Cpr as Upstream
#endif
