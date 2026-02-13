-- | Compatibility wrapper around ghc’s "GHC.Platform.NoRegs".
module GHC.Platform.NoRegs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Platform.NoRegs as Upstream
#else
import "ghc" CodeGen.Platform.NoRegs as Upstream
#endif
