-- | Compatibility wrapper around ghc’s "GHC.Hs.ImpExp".
module GHC.Hs.ImpExp
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs.ImpExp as Upstream
#else
import "ghc" HsImpExp as Upstream
#endif
