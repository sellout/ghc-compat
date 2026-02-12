-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Linear.State".
module GHC.CmmToAsm.Reg.Linear.State
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Linear.State as Upstream
#else
import "ghc" RegAlloc.Linear.State as Upstream
#endif
