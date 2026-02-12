-- | Compatibility wrapper around ghc’s "GHC.Core.FamInstEnv".
module GHC.Core.FamInstEnv
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.FamInstEnv as Upstream
#else
import "ghc" FamInstEnv as Upstream
#endif
