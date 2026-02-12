-- | Compatibility wrapper around ghc’s "GHC.Platform.Regs".
module GHC.Platform.Regs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Platform.Regs as Upstream
#else
import "ghc" CodeGen.Platform as Upstream
#endif
