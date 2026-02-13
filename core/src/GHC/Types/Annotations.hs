-- | Compatibility wrapper around ghc’s "GHC.Types.Annotations".
module GHC.Types.Annotations
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Annotations as Upstream
#else
import "ghc" Annotations as Upstream
#endif
