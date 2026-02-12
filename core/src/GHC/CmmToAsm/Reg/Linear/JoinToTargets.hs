-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Linear.JoinToTargets".
module GHC.CmmToAsm.Reg.Linear.JoinToTargets
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Linear.JoinToTargets as Upstream
#else
import "ghc" RegAlloc.Linear.JoinToTargets as Upstream
#endif
