-- | Compatibility wrapper around ghc’s "GHC.Core.Ppr".
module GHC.Core.Ppr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Ppr as Upstream
#else
import "ghc" PprCore as Upstream
#endif
