-- | Compatibility wrapper around ghc’s "GHC.Data.OrdList".
module GHC.Data.OrdList
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.OrdList as Upstream
#else
import "ghc" OrdList as Upstream
#endif
