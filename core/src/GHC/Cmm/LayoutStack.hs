-- | Compatibility wrapper around ghc’s "GHC.Cmm.LayoutStack".
module GHC.Cmm.LayoutStack
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.LayoutStack as Upstream
#else
import "ghc" CmmLayoutStack as Upstream
#endif
