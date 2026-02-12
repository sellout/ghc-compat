-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.SPARC.CodeGen.Base".
module GHC.CmmToAsm.SPARC.CodeGen.Base
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.SPARC.CodeGen.Base as Upstream
#else
import "ghc" SPARC.CodeGen.Base as Upstream
#endif
