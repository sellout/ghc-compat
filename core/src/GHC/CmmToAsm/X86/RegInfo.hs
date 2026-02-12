-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.X86.RegInfo".
module GHC.CmmToAsm.X86.RegInfo
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.X86.RegInfo as Upstream
#else
import "ghc" X86.RegInfo as Upstream
#endif
