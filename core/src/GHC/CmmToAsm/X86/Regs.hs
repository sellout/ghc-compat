-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.X86.Regs".
module GHC.CmmToAsm.X86.Regs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.X86.Regs as Upstream
#else
import "ghc" X86.Regs as Upstream
#endif
