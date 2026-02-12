-- | Compatibility wrapper around ghc’s "GHC.Platform.Reg".
module GHC.Platform.Reg
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Platform.Reg as Upstream
#else
import "ghc" Reg as Upstream
#endif
