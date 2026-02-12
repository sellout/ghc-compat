-- | Compatibility wrapper around ghc’s "GHC.Stg.Unarise".
module GHC.Stg.Unarise
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Stg.Unarise as Upstream
#else
import "ghc" UnariseStg as Upstream
#endif
