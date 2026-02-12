-- | Compatibility wrapper around ghc’s "GHC.Data.BooleanFormula".
module GHC.Data.BooleanFormula
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.BooleanFormula as Upstream
#else
import "ghc" BooleanFormula as Upstream
#endif
