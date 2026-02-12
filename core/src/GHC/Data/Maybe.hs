-- | Compatibility wrapper around ghc’s "GHC.Data.Maybe".
module GHC.Data.Maybe
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.Maybe as Upstream
#else
import "ghc" Maybes as Upstream
#endif
