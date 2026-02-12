-- | Compatibility wrapper around ghc’s "GHC.CmmToLlvm.Data".
module GHC.CmmToLlvm.Data
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToLlvm.Data as Upstream
#else
import "ghc" LlvmCodeGen.Data as Upstream
#endif
