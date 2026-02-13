-- | Compatibility wrapper around ghc’s "GHC.Cmm.Ppr".
module GHC.Cmm.Ppr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 6, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Ppr as Upstream
#else
import "ghc" PprCmm as Upstream
#endif
