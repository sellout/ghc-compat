-- | Compatibility wrapper around ghc’s "GHC.Utils.Monad".
module GHC.Utils.Monad
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Monad as Upstream
#else
import "ghc" MonadUtils as Upstream
#endif
