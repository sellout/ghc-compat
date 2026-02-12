-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.SPARC.CodeGen.Expand".
module GHC.CmmToAsm.SPARC.CodeGen.Expand
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.SPARC.CodeGen.Expand as Upstream
#else
import "ghc" SPARC.CodeGen.Expand as Upstream
#endif
