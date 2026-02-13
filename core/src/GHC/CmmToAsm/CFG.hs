-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.CFG".
module GHC.CmmToAsm.CFG
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.CFG as Upstream
#elif MIN_VERSION_ghc(8, 8, 0)
import "ghc" CFG as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "this" Unresolved as Upstream
#else
import "ghc" CFG as Upstream
#endif
