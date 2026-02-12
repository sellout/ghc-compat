-- | Compatibility wrapper around ghc’s "GHC.Core".
module GHC.Core
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core as Upstream
#else
import "ghc" CoreSyn as Upstream
#endif
