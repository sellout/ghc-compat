-- | Compatibility wrapper around ghc’s "GHC.Core.Utils".
module GHC.Core.Utils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Utils as Upstream
#else
import "ghc" CoreUtils as Upstream
#endif
