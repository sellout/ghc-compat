-- | Compatibility wrapper around ghc’s "GHC.Rename.Env".
module GHC.Rename.Env
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Rename.Env as Upstream
#else
import "ghc" RnEnv as Upstream
#endif
