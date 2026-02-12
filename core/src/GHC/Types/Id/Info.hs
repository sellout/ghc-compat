-- | Compatibility wrapper around ghc’s "GHC.Types.Id.Info".
module GHC.Types.Id.Info
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Id.Info as Upstream
#else
import "ghc" IdInfo as Upstream
#endif
