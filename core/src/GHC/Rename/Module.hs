-- | Compatibility wrapper around ghc’s "GHC.Rename.Module".
module GHC.Rename.Module
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Rename.Module as Upstream
#else
import "ghc" RnSource as Upstream
#endif
