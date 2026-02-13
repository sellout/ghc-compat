-- | Compatibility wrapper around ghc’s "GHC.Core.Seq".
module GHC.Core.Seq
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Seq as Upstream
#elif MIN_VERSION_ghc(8, 0, 0)
import "ghc" CoreSeq as Upstream
#else
import "this" Unresolved as Upstream
#endif
