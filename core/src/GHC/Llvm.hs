-- | Compatibility wrapper around ghc’s "GHC.Llvm".
module GHC.Llvm
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Llvm as Upstream
#else
import "ghc" Llvm as Upstream
#endif
