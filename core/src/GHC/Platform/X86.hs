-- | Compatibility wrapper around ghc’s "GHC.Platform.X86".
module GHC.Platform.X86
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Platform.X86 as Upstream
#else
import "ghc" CodeGen.Platform.X86 as Upstream
#endif
