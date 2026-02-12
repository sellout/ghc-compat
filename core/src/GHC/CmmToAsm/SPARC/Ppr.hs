-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.SPARC.Ppr".
module GHC.CmmToAsm.SPARC.Ppr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.SPARC.Ppr as Upstream
#else
import "ghc" SPARC.Ppr as Upstream
#endif
