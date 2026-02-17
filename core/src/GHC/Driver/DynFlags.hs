-- | Compatibility wrapper around ghc’s "GHC.Driver.DynFlags".
module GHC.Driver.DynFlags
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 8, 0)
import "ghc" GHC.Driver.DynFlags as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Session as Upstream
#else
import "ghc" DynFlags as Upstream
#endif
