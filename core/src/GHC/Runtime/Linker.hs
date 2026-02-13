-- | Compatibility wrapper around ghc’s "GHC.Runtime.Linker".
module GHC.Runtime.Linker
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 4, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Runtime.Linker as Upstream
#else
import "ghc" Linker as Upstream
#endif
