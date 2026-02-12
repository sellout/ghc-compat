-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.SPARC.AddrMode".
module GHC.CmmToAsm.SPARC.AddrMode
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.SPARC.AddrMode as Upstream
#else
import "ghc" SPARC.AddrMode as Upstream
#endif
