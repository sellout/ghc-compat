-- | Compatibility wrapper around ghc’s "GHC.Llvm.Ppr".
module GHC.Llvm.Ppr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Llvm.Ppr as Upstream
#else
import "ghc" Llvm.PpLlvm as Upstream
#endif
