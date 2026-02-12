-- | Compatibility wrapper around ghc’s "GHC.HsToCore.Match.Literal".
module GHC.HsToCore.Match.Literal
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.Match.Literal as Upstream
#else
import "ghc" MatchLit as Upstream
#endif
