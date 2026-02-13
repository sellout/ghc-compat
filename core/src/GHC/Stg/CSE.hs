-- | Compatibility wrapper around ghc’s "GHC.Stg.CSE".
module GHC.Stg.CSE
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Stg.CSE as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" StgCse as Upstream
#else
import "this" Unresolved as Upstream
#endif
