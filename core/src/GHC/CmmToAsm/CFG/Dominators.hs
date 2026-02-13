-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.CFG.Dominators".
module GHC.CmmToAsm.CFG.Dominators
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.CFG.Dominators as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" Dominators as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "this" Unresolved as Upstream
#else
import "ghc" Dominators as Upstream
#endif
