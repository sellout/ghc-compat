-- | Compatibility wrapper around ghc’s "GHC.Rename.HsType".
module GHC.Rename.HsType
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Rename.HsType as Upstream
#else
import "ghc" RnTypes as Upstream
#endif
