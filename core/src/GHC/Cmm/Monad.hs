-- | Compatibility wrapper around ghc’s "GHC.Cmm.Monad".
module GHC.Cmm.Monad
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 4, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Monad as Upstream
#else
import "ghc" CmmMonad as Upstream
#endif
