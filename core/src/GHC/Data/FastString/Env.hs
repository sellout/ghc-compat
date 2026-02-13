-- | Compatibility wrapper around ghc’s "GHC.Data.FastString.Env".
module GHC.Data.FastString.Env
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.FastString.Env as Upstream
#elif MIN_VERSION_ghc(8, 0, 0)
import "ghc" FastStringEnv as Upstream
#else
import "this" Unresolved as Upstream
#endif
