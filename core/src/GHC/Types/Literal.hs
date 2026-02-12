-- | Compatibility wrapper around ghc’s "GHC.Types.Literal".
module GHC.Types.Literal
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Literal as Upstream
#else
import "ghc" Literal as Upstream
#endif
