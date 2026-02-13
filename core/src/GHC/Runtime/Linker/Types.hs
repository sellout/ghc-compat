-- | Compatibility wrapper around ghc’s "GHC.Runtime.Linker.Types".
module GHC.Runtime.Linker.Types
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Runtime.Linker.Types as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" LinkerTypes as Upstream
#else
import "this" Unresolved as Upstream
#endif
