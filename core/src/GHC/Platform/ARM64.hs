-- | Compatibility wrapper around ghc’s "GHC.Platform.ARM64".
module GHC.Platform.ARM64
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Platform.ARM64 as Upstream
#else
import "ghc" CodeGen.Platform.ARM64 as Upstream
#endif
