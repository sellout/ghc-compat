-- | Compatibility wrapper around ghc’s "GHC.Core.DataCon".
module GHC.Core.DataCon
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.DataCon as Upstream
#else
import "ghc" DataCon as Upstream
#endif
