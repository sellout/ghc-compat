-- | Compatibility wrapper around ghc’s "GHC.Utils.Monad.Utils".
module GHC.Utils.Monad.Utils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 4, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Monad.Utils as Upstream
#else
import "ghc" MonadUtils as Upstream
#endif
