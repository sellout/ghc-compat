-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.PPC.CodeGen".
module GHC.CmmToAsm.PPC.CodeGen
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.PPC.CodeGen as Upstream
#else
import "ghc" PPC.CodeGen as Upstream
#endif
