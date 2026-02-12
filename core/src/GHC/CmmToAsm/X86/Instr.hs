-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.X86.Instr".
module GHC.CmmToAsm.X86.Instr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.X86.Instr as Upstream
#else
import "ghc" X86.Instr as Upstream
#endif
