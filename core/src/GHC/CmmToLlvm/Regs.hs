-- | Compatibility wrapper around ghc’s "GHC.CmmToLlvm.Regs".
module GHC.CmmToLlvm.Regs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToLlvm.Regs as Upstream
#else
import "ghc" LlvmCodeGen.Regs as Upstream
#endif
