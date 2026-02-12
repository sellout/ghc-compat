-- | Compatibility wrapper around ghc’s "GHC.Data.Bag".
module GHC.Data.Bag
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.Bag as Upstream
#else
import "ghc" Bag as Upstream
#endif
