-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.BlockLayout".
module GHC.CmmToAsm.BlockLayout
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.BlockLayout as Upstream
#elif MIN_VERSION_ghc(8, 8, 0)
import "ghc" BlockLayout as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "this" Unresolved as Upstream
#else
import "ghc" BlockLayout as Upstream
#endif
