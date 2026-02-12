-- | Compatibility wrapper around ghc’s "GHC.Rename.Pat".
module GHC.Rename.Pat
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Rename.Pat as Upstream
#else
import "ghc" RnPat as Upstream
#endif
