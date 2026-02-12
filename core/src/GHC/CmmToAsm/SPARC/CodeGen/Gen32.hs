-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.SPARC.CodeGen.Gen32".
module GHC.CmmToAsm.SPARC.CodeGen.Gen32
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.SPARC.CodeGen.Gen32 as Upstream
#else
import "ghc" SPARC.CodeGen.Gen32 as Upstream
#endif
