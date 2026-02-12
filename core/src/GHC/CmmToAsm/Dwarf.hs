-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Dwarf".
module GHC.CmmToAsm.Dwarf
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Dwarf as Upstream
#else
import "ghc" Dwarf as Upstream
#endif
