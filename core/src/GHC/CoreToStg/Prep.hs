-- | Compatibility wrapper around ghc’s "GHC.CoreToStg.Prep".
module GHC.CoreToStg.Prep
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CoreToStg.Prep as Upstream
#else
import "ghc" CorePrep as Upstream
#endif
