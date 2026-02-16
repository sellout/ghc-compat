-- | Compatibility wrapper around ghc’s "GHC.Driver.Env.Types".
module GHC.Driver.Env.Types
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "ghc" GHC.Driver.Env.Types as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Types as Upstream
#else
import "ghc" HscTypes as Upstream
#endif
