-- | Compatibility wrapper around ghc’s "GHC.Platform.PPC".
module GHC.Platform.PPC
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Platform.PPC as Upstream
#else
import "ghc" CodeGen.Platform.PPC as Upstream
#endif
