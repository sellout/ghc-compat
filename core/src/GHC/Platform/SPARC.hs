-- | Compatibility wrapper around ghc’s "GHC.Platform.SPARC".
module GHC.Platform.SPARC
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Platform.SPARC as Upstream
#else
import "ghc" CodeGen.Platform.SPARC as Upstream
#endif
