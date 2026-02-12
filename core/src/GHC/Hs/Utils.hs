-- | Compatibility wrapper around ghc’s "GHC.Hs.Utils".
module GHC.Hs.Utils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Hs.Utils as Upstream
#else
import "ghc" HsUtils as Upstream
#endif
