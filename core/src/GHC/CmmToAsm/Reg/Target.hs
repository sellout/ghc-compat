-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Target".
module GHC.CmmToAsm.Reg.Target
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Target as Upstream
#else
import "ghc" TargetReg as Upstream
#endif
