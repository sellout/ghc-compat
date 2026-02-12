-- | Compatibility wrapper around ghc’s "GHC.HsToCore.Match.Constructor".
module GHC.HsToCore.Match.Constructor
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.Match.Constructor as Upstream
#else
import "ghc" MatchCon as Upstream
#endif
