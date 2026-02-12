-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.SPARC.CodeGen.Sanity".
module GHC.CmmToAsm.SPARC.CodeGen.Sanity
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.SPARC.CodeGen.Sanity as Upstream
#else
import "ghc" SPARC.CodeGen.Sanity as Upstream
#endif
