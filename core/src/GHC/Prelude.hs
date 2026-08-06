-- | Compatibility wrapper around ghc’s "GHC.Prelude".
module GHC.Prelude
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Prelude as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" GhcPrelude as Upstream
#else
import "this" GHC.Prelude.Basic as Upstream
#endif
