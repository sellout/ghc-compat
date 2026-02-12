-- | Compatibility wrapper around ghc’s "GHC.Rename.Names".
module GHC.Rename.Names
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Rename.Names as Upstream
#else
import "ghc" RnNames as Upstream
#endif
