-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.SPARC.Base".
module GHC.CmmToAsm.SPARC.Base
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.SPARC.Base as Upstream
#else
import "ghc" SPARC.Base as Upstream
#endif
