-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.Simplify.Monad".
module GHC.Core.Opt.Simplify.Monad
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.Simplify.Monad as Upstream
#else
import "ghc" SimplMonad as Upstream
#endif
