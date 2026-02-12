-- | Compatibility wrapper around ghc’s "GHC.Core.Coercion.Opt".
module GHC.Core.Coercion.Opt
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Coercion.Opt as Upstream
#else
import "ghc" OptCoercion as Upstream
#endif
