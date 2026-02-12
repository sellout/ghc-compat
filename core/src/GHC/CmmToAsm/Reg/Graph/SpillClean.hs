-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Graph.SpillClean".
module GHC.CmmToAsm.Reg.Graph.SpillClean
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Graph.SpillClean as Upstream
#else
import "ghc" RegAlloc.Graph.SpillClean as Upstream
#endif
