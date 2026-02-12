-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.SPARC.Stack".
module GHC.CmmToAsm.SPARC.Stack
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.SPARC.Stack as Upstream
#else
import "ghc" SPARC.Stack as Upstream
#endif
