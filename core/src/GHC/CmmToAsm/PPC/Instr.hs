-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.PPC.Instr".
module GHC.CmmToAsm.PPC.Instr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.PPC.Instr as Upstream
#else
import "ghc" PPC.Instr as Upstream
#endif
