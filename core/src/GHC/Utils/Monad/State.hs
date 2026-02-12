-- | Compatibility wrapper around ghc’s "GHC.Utils.Monad.State".
module GHC.Utils.Monad.State
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Monad.State as Upstream
#else
import "ghc" State as Upstream
#endif
