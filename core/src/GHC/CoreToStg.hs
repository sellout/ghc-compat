-- | Compatibility wrapper around ghc’s "GHC.CoreToStg".
module GHC.CoreToStg
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CoreToStg as Upstream
#else
import "ghc" CoreToStg as Upstream
#endif
