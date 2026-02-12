-- | Compatibility wrapper around ghc’s "GHC.Data.Bitmap".
module GHC.Data.Bitmap
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.Bitmap as Upstream
#else
import "ghc" Bitmap as Upstream
#endif
