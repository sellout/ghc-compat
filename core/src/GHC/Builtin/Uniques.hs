-- | Compatibility wrapper around ghc’s "GHC.Builtin.Uniques".
module GHC.Builtin.Uniques
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Builtin.Uniques as Upstream
#else
import "ghc" KnownUniques as Upstream
#endif
