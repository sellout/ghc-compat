-- | Compatibility wrapper around ghc’s "GHC.Types.Unique.Set".
module GHC.Types.Unique.Set
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Unique.Set as Upstream
#else
import "ghc" UniqSet as Upstream
#endif
