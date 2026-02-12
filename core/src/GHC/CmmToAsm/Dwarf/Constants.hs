-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Dwarf.Constants".
module GHC.CmmToAsm.Dwarf.Constants
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Dwarf.Constants as Upstream
#else
import "ghc" Dwarf.Constants as Upstream
#endif
