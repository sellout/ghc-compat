-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.SPARC.CodeGen.CondCode".
module GHC.CmmToAsm.SPARC.CodeGen.CondCode
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.SPARC.CodeGen.CondCode as Upstream
#else
import "ghc" SPARC.CodeGen.CondCode as Upstream
#endif
