-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.SPARC.CodeGen".
module GHC.CmmToAsm.SPARC.CodeGen
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.SPARC.CodeGen as Upstream
#else
import "ghc" SPARC.CodeGen as Upstream
#endif
