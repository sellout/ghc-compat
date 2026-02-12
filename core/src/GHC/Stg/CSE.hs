-- | Compatibility wrapper around ghc’s "GHC.Stg.CSE".
module GHC.Stg.CSE
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Stg.CSE as Upstream
#else
import "ghc" StgCse as Upstream
#endif
