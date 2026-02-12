-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Graph.Stats".
module GHC.CmmToAsm.Reg.Graph.Stats
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Graph.Stats as Upstream
#else
import "ghc" RegAlloc.Graph.Stats as Upstream
#endif
