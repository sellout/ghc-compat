-- | Compatibility wrapper around ghc’s "GHC.Cmm.Monad".
module GHC.Cmm.Monad
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Monad as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" CmmMonad as Upstream
#else
import "this" Unresolved as Upstream
#endif
