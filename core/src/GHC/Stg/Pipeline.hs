-- | Compatibility wrapper around ghc’s "GHC.Stg.Pipeline".
module GHC.Stg.Pipeline
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Stg.Pipeline as Upstream
#else
import "ghc" SimplStg as Upstream
#endif
