-- | Compatibility wrapper around ghc’s "GHC.Platform.ARM".
module GHC.Platform.ARM
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Platform.ARM as Upstream
#else
import "ghc" CodeGen.Platform.ARM as Upstream
#endif
