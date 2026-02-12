-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.SPARC.CodeGen.Amode".
module GHC.CmmToAsm.SPARC.CodeGen.Amode
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.SPARC.CodeGen.Amode as Upstream
#else
import "ghc" SPARC.CodeGen.Amode as Upstream
#endif
