-- | Compatibility wrapper around ghc’s "GHC.Core.Type".
module GHC.Core.Type
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Type as Upstream
#else
import "ghc" Type as Upstream
#endif
