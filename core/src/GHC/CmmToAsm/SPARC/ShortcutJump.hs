-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.SPARC.ShortcutJump".
module GHC.CmmToAsm.SPARC.ShortcutJump
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.SPARC.ShortcutJump as Upstream
#else
import "ghc" SPARC.ShortcutJump as Upstream
#endif
