-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Graph.Base".
module GHC.CmmToAsm.Reg.Graph.Base
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Graph.Base as Upstream
#else
import "ghc" RegAlloc.Graph.ArchBase as Upstream
#endif
