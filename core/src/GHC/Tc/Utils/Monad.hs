-- | Compatibility wrapper around ghc’s "GHC.Tc.Utils.Monad".
module GHC.Tc.Utils.Monad
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Utils.Monad as Upstream
#else
import "ghc" TcRnMonad as Upstream
#endif
