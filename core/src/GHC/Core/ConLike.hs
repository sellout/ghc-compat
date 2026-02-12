-- | Compatibility wrapper around ghc’s "GHC.Core.ConLike".
module GHC.Core.ConLike
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.ConLike as Upstream
#else
import "ghc" ConLike as Upstream
#endif
