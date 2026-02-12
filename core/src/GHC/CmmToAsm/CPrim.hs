-- | Compatibility wrapper around ghc’s "GHC.CmmToAsm.CPrim".
module GHC.CmmToAsm.CPrim
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CmmToAsm.CPrim as Upstream
#else
import "ghc" CPrim as Upstream
#endif
