-- | Compatibility wrapper around ghc’s "GHC.Core.Make".
module GHC.Core.Make
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Make as Upstream
#else
import "ghc" MkCore as Upstream
#endif
