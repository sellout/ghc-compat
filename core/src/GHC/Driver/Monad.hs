-- | Compatibility wrapper around ghc’s "GHC.Driver.Monad".
module GHC.Driver.Monad
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Monad as Upstream
#else
import "ghc" GhcMonad as Upstream
#endif
