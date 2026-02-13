-- | Compatibility wrapper around ghc’s "GHC.Types.RepType".
module GHC.Types.RepType
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.RepType as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" RepType as Upstream
#else
import "this" Unresolved as Upstream
#endif
