-- | Compatibility wrapper around ghc’s "GHC.Rename.Utils".
module GHC.Rename.Utils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Rename.Utils as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" RnUtils as Upstream
#else
import "this" Unresolved as Upstream
#endif
