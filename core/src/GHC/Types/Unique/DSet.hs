-- | Compatibility wrapper around ghc’s "GHC.Types.Unique.DSet".
module GHC.Types.Unique.DSet
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Unique.DSet as Upstream
#elif MIN_VERSION_ghc(8, 0, 0)
import "ghc" UniqDSet as Upstream
#else
import "this" Unresolved as Upstream
#endif
