-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Graph.Coalesce".
module GHC.CmmToAsm.Reg.Graph.Coalesce
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Graph.Coalesce as Upstream
#else
import "ghc" RegAlloc.Graph.Coalesce as Upstream
#endif
