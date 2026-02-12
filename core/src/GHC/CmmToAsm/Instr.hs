-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Instr".
module GHC.CmmToAsm.Instr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Instr as Upstream
#else
import "ghc" Instruction as Upstream
#endif
