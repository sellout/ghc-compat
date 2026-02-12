-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Linear.FreeRegs".
module GHC.CmmToAsm.Reg.Linear.FreeRegs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Linear.FreeRegs as Upstream
#else
import "ghc" RegAlloc.Linear.FreeRegs as Upstream
#endif
