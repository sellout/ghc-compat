-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Reg.Graph.TrivColorable".
module GHC.CmmToAsm.Reg.Graph.TrivColorable
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Reg.Graph.TrivColorable as Upstream
#else
import "ghc" RegAlloc.Graph.TrivColorable as Upstream
#endif
