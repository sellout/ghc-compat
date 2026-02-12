-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Graph.SpillCost".
module GHC.CmmToAsm.Reg.Graph.SpillCost
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Graph.SpillCost as Upstream
#else
import "ghc" RegAlloc.Graph.SpillCost as Upstream
#endif
