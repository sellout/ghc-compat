-- | Compatibility wrapper around ghc’s "GHC.Core.TyCon".
module GHC.Core.TyCon
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.TyCon as Upstream
#else
import "ghc" TyCon as Upstream
#endif
