-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.X86.CodeGen".
module GHC.CmmToAsm.X86.CodeGen
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.X86.CodeGen as Upstream
#else
import "ghc" X86.CodeGen as Upstream
#endif
