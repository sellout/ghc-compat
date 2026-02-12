-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Linear.Base".
module GHC.CmmToAsm.Reg.Linear.Base
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Linear.Base as Upstream
#else
import "ghc" RegAlloc.Linear.Base as Upstream
#endif
