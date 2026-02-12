-- | Compatibility wrapper around ghc’s "GHC.Core.Coercion.Axiom".
module GHC.Core.Coercion.Axiom
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Coercion.Axiom as Upstream
#else
import "ghc" CoAxiom as Upstream
#endif
