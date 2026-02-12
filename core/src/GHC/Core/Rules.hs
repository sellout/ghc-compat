-- | Compatibility wrapper around ghc’s "GHC.Core.Rules".
module GHC.Core.Rules
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Rules as Upstream
#else
import "ghc" Rules as Upstream
#endif
