-- | Compatibility wrapper around ghc’s "GHC.Types.Id.Make".
module GHC.Types.Id.Make
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Id.Make as Upstream
#else
import "ghc" MkId as Upstream
#endif
