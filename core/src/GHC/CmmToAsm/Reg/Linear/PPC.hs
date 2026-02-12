-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Linear.PPC".
module GHC.CmmToAsm.Reg.Linear.PPC
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Linear.PPC as Upstream
#else
import "ghc" RegAlloc.Linear.PPC.FreeRegs as Upstream
#endif
