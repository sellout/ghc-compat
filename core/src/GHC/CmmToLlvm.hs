-- | Compatibility wrapper around ghc’s "GHC.CmmToLlvm".
module GHC.CmmToLlvm
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToLlvm as Upstream
#else
import "ghc" LlvmCodeGen as Upstream
#endif
