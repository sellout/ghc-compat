-- | Compatibility wrapper around ghc’s "GHC.CmmToLlvm.Ppr".
module GHC.CmmToLlvm.Ppr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToLlvm.Ppr as Upstream
#else
import "ghc" LlvmCodeGen.Ppr as Upstream
#endif
