-- | Compatibility wrapper around ghc’s "GHC.CmmToC".
module GHC.CmmToC
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToC as Upstream
#else
import "ghc" PprC as Upstream
#endif
