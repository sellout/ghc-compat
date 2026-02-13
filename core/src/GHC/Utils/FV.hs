-- | Compatibility wrapper around ghc’s "GHC.Utils.FV".
module GHC.Utils.FV
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.FV as Upstream
#elif MIN_VERSION_ghc(8, 0, 0)
import "ghc" FV as Upstream
#else
import "this" Unresolved as Upstream
#endif
