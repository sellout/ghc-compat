-- | Compatibility wrapper around ghc’s "GHC.CmmToLlvm.Base".
module GHC.CmmToLlvm.Base
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToLlvm.Base as Upstream
#else
import "ghc" LlvmCodeGen.Base as Upstream
#endif
