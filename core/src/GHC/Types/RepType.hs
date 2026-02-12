-- | Compatibility wrapper around ghc’s "GHC.Types.RepType".
module GHC.Types.RepType
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.RepType as Upstream
#else
import "ghc" RepType as Upstream
#endif
