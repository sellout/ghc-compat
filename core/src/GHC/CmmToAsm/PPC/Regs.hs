-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.PPC.Regs".
module GHC.CmmToAsm.PPC.Regs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.PPC.Regs as Upstream
#else
import "ghc" PPC.Regs as Upstream
#endif
