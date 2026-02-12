-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Linear".
module GHC.CmmToAsm.Reg.Linear
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Linear as Upstream
#else
import "ghc" RegAlloc.Linear.Main as Upstream
#endif
