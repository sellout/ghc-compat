-- | Compatibility wrapper around ghc’s "GHC.Utils.FV".
module GHC.Utils.FV
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.FV as Upstream
#else
import "ghc" FV as Upstream
#endif
