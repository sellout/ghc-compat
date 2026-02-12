-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Monad".
module GHC.CmmToAsm.Monad
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Monad as Upstream
#else
import "ghc" NCGMonad as Upstream
#endif
