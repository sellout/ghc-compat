-- | Compatibility wrapper around ghc’s "GHC.Platform.ARM64".
module GHC.Platform.ARM64
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 7)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Platform.ARM64 as Upstream
#else
import "ghc" CodeGen.Platform.ARM64 as Upstream
#endif
