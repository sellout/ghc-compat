-- | Compatibility wrapper around ghc’s "GHC.Data.FastString.Env".
module GHC.Data.FastString.Env
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.FastString.Env as Upstream
#else
import "ghc" FastStringEnv as Upstream
#endif
