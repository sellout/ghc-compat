-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.SPARC.Regs".
module GHC.CmmToAsm.SPARC.Regs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.SPARC.Regs as Upstream
#else
import "ghc" SPARC.Regs as Upstream
#endif
