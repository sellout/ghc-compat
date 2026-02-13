-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.Format".
module GHC.CmmToAsm.Format
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.Format as Upstream
#elif MIN_VERSION_ghc(8, 0, 0)
import "ghc" Format as Upstream
#else
import "this" Unresolved as Upstream
#endif
