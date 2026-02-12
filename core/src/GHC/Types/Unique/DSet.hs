-- | Compatibility wrapper around ghc’s "GHC.Types.Unique.DSet".
module GHC.Types.Unique.DSet
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Unique.DSet as Upstream
#else
import "ghc" UniqDSet as Upstream
#endif
