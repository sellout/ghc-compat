-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.SPARC.Cond".
module GHC.CmmToAsm.SPARC.Cond
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.SPARC.Cond as Upstream
#else
import "ghc" SPARC.Cond as Upstream
#endif
