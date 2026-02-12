-- | Compatibility wrapper around ghc’s "GHC.Types.Unique".
module GHC.Types.Unique
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Unique as Upstream
#else
import "ghc" Unique as Upstream
#endif
