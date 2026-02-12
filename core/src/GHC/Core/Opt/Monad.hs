-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.Monad".
module GHC.Core.Opt.Monad
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.Monad as Upstream
#else
import "ghc" CoreMonad as Upstream
#endif
