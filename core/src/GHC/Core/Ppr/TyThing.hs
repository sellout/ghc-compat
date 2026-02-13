-- | Compatibility wrapper around ghc’s "GHC.Core.Ppr.TyThing".
module GHC.Core.Ppr.TyThing
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 4, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Ppr.TyThing as Upstream
#else
import "ghc" PprTyThing as Upstream
#endif
