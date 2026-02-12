-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Linear.Stats".
module GHC.CmmToAsm.Reg.Linear.Stats
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Linear.Stats as Upstream
#else
import "ghc" RegAlloc.Linear.Stats as Upstream
#endif
