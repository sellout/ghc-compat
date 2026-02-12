-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Linear.StackMap".
module GHC.CmmToAsm.Reg.Linear.StackMap
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Linear.StackMap as Upstream
#else
import "ghc" RegAlloc.Linear.StackMap as Upstream
#endif
