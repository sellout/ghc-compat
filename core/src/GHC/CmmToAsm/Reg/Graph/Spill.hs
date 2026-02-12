-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Graph.Spill".
module GHC.CmmToAsm.Reg.Graph.Spill
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Graph.Spill as Upstream
#else
import "ghc" RegAlloc.Graph.Spill as Upstream
#endif
