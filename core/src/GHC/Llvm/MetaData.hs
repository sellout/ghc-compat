-- | Compatibility wrapper around ghc’s "GHC.Llvm.MetaData".
module GHC.Llvm.MetaData
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Llvm.MetaData as Upstream
#else
import "ghc" Llvm.MetaData as Upstream
#endif
