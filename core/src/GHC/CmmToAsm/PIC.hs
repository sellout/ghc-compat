-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.PIC".
module GHC.CmmToAsm.PIC
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.PIC as Upstream
#else
import "ghc" PIC as Upstream
#endif
