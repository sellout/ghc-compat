-- | Compatibility wrapper around ghc’s "GHC.Rename.Utils".
module GHC.Rename.Utils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Rename.Utils as Upstream
#else
import "ghc" RnUtils as Upstream
#endif
