-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.PPC.RegInfo".
module GHC.CmmToAsm.PPC.RegInfo
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.PPC.RegInfo as Upstream
#else
import "ghc" PPC.RegInfo as Upstream
#endif
