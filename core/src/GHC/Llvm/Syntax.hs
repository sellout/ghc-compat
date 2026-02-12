-- | Compatibility wrapper around ghc’s "GHC.Llvm.Syntax".
module GHC.Llvm.Syntax
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Llvm.Syntax as Upstream
#else
import "ghc" Llvm.AbsSyn as Upstream
#endif
