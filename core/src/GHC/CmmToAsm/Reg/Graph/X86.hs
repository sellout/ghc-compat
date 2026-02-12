-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Graph.X86".
module GHC.CmmToAsm.Reg.Graph.X86
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Graph.X86 as Upstream
#else
import "ghc" RegAlloc.Graph.ArchX86 as Upstream
#endif
