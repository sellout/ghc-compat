-- | Compatibility wrapper around ghc’s "GHC.ThToHs".
module GHC.ThToHs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.ThToHs as Upstream
#else
import "ghc" Convert as Upstream
#endif
