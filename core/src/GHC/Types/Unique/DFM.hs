-- | Compatibility wrapper around ghc’s "GHC.Types.Unique.DFM".
module GHC.Types.Unique.DFM
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Unique.DFM as Upstream
#else
import "ghc" UniqDFM as Upstream
#endif
