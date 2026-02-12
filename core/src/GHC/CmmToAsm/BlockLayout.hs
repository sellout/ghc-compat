-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.BlockLayout".
module GHC.CmmToAsm.BlockLayout
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.BlockLayout as Upstream
#else
import "ghc" BlockLayout as Upstream
#endif
