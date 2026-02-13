-- | Compatibility wrapper around ghc’s "GHC.Builtin.Uniques".
module GHC.Builtin.Uniques
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Builtin.Uniques as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" KnownUniques as Upstream
#else
import "this" Unresolved as Upstream
#endif
