-- | Compatibility wrapper around ghc’s "GHC.Utils.Panic".
module GHC.Utils.Panic
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Panic as Upstream
#else
import "ghc" Panic as Upstream
#endif
