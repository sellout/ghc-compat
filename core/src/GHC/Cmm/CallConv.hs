-- | Compatibility wrapper around ghc’s "GHC.Cmm.CallConv".
module GHC.Cmm.CallConv
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.CallConv as Upstream
#else
import "ghc" CmmCallConv as Upstream
#endif
