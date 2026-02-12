-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Liveness".
module GHC.CmmToAsm.Reg.Liveness
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Liveness as Upstream
#else
import "ghc" RegAlloc.Liveness as Upstream
#endif
