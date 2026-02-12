-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Linear.X86_64".
module GHC.CmmToAsm.Reg.Linear.X86_64
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Linear.X86_64 as Upstream
#else
import "ghc" RegAlloc.Linear.X86_64.FreeRegs as Upstream
#endif
