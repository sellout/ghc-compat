-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.SPARC.Imm".
module GHC.CmmToAsm.SPARC.Imm
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.SPARC.Imm as Upstream
#else
import "ghc" SPARC.Imm as Upstream
#endif
