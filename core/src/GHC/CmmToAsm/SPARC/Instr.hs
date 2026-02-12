-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.SPARC.Instr".
module GHC.CmmToAsm.SPARC.Instr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.SPARC.Instr as Upstream
#else
import "ghc" SPARC.Instr as Upstream
#endif
