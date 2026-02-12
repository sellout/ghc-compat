-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Dwarf.Types".
module GHC.CmmToAsm.Dwarf.Types
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Dwarf.Types as Upstream
#else
import "ghc" Dwarf.Types as Upstream
#endif
