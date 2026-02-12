-- | Compatibility wrapper around ghc’s "GHC.Runtime.Loader".
module GHC.Runtime.Loader
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Runtime.Loader as Upstream
#else
import "ghc" DynamicLoading as Upstream
#endif
