-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.PPC.Cond".
module GHC.CmmToAsm.PPC.Cond
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.PPC.Cond as Upstream
#else
import "ghc" PPC.Cond as Upstream
#endif
