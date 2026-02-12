-- | Compatibility wrapper around ghc’s "GHC.HsToCore.Monad".
module GHC.HsToCore.Monad
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.Monad as Upstream
#else
import "ghc" DsMonad as Upstream
#endif
