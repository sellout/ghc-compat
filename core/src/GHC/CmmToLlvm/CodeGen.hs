-- | Compatibility wrapper around ghc’s "GHC.CmmToLlvm.CodeGen".
module GHC.CmmToLlvm.CodeGen
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToLlvm.CodeGen as Upstream
#else
import "ghc" LlvmCodeGen.CodeGen as Upstream
#endif
