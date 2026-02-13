-- | Compatibility wrapper around ghc’s "GHC.SysTools.Elf".
module GHC.SysTools.Elf
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.SysTools.Elf as Upstream
#elif MIN_VERSION_ghc(8, 0, 0)
import "ghc" Elf as Upstream
#else
import "this" Unresolved as Upstream
#endif
