-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.Env".
module GHC.StgToCmm.Env
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.StgToCmm.Env as Upstream
#else
import "ghc" StgCmmEnv as Upstream
#endif
