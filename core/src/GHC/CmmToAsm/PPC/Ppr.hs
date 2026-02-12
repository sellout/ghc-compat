-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.PPC.Ppr".
module GHC.CmmToAsm.PPC.Ppr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.PPC.Ppr as Upstream
#else
import "ghc" PPC.Ppr as Upstream
#endif
