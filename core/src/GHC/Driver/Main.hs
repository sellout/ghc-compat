-- | Compatibility wrapper around ghc’s "GHC.Driver.Main".
module GHC.Driver.Main
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Main as Upstream
#else
import "ghc" HscMain as Upstream
#endif
