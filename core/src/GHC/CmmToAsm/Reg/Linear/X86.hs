-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Linear.X86".
module GHC.CmmToAsm.Reg.Linear.X86
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Linear.X86 as Upstream
#else
import "ghc" RegAlloc.Linear.X86.FreeRegs as Upstream
#endif
