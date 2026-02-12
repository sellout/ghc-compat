-- | Compatibility wrapper around ghc’s "GHC.Runtime.Linker.Types".
module GHC.Runtime.Linker.Types
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Runtime.Linker.Types as Upstream
#else
import "ghc" LinkerTypes as Upstream
#endif
