-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Ppr".
module GHC.CmmToAsm.Ppr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Ppr as Upstream
#else
import "ghc" PprBase as Upstream
#endif
