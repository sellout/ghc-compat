-- | Compatibility wrapper around ghc’s "GHC.Core.InstEnv".
module GHC.Core.InstEnv
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.InstEnv as Upstream
#else
import "ghc" InstEnv as Upstream
#endif
