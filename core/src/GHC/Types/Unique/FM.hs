-- | Compatibility wrapper around ghc’s "GHC.Types.Unique.FM".
module GHC.Types.Unique.FM
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Unique.FM as Upstream
#else
import "ghc" UniqFM as Upstream
#endif
