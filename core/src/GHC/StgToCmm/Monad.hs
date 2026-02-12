-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.Monad".
module GHC.StgToCmm.Monad
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.StgToCmm.Monad as Upstream
#else
import "ghc" StgCmmMonad as Upstream
#endif
