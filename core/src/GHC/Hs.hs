-- | Compatibility wrapper around ghc’s "GHC.Hs".
module GHC.Hs
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
#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs as Upstream
#else
import "ghc" HsSyn as Upstream
#endif
