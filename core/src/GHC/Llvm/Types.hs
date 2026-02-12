-- | Compatibility wrapper around ghc’s "GHC.Llvm.Types".
module GHC.Llvm.Types
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Llvm.Types as Upstream
#else
import "ghc" Llvm.Types as Upstream
#endif
