-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Linear.SPARC".
module GHC.CmmToAsm.Reg.Linear.SPARC
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Linear.SPARC as Upstream
#else
import "ghc" RegAlloc.Linear.SPARC.FreeRegs as Upstream
#endif
