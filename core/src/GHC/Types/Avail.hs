-- | Compatibility wrapper around ghc’s "GHC.Types.Avail".
module GHC.Types.Avail
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Avail as Upstream
#else
import "ghc" Avail as Upstream
#endif
