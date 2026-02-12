-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm".
module GHC.CmmToAsm
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm as Upstream
#else
import "ghc" AsmCodeGen as Upstream
#endif
