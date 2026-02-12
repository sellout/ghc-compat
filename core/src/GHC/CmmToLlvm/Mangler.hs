-- | Compatibility wrapper around ghc’s "GHC.CmmToLlvm.Mangler".
module GHC.CmmToLlvm.Mangler
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToLlvm.Mangler as Upstream
#else
import "ghc" LlvmMangler as Upstream
#endif
