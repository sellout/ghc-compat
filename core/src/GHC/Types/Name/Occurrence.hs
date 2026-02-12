-- | Compatibility wrapper around ghc’s "GHC.Types.Name.Occurrence".
module GHC.Types.Name.Occurrence
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Name.Occurrence as Upstream
#else
import "ghc" OccName as Upstream
#endif
