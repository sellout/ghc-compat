-- | Compatibility wrapper around ghc’s "GHC.Parser".
module GHC.Parser
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Parser as Upstream
#else
import "ghc" Parser as Upstream
#endif
