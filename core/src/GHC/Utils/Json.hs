-- | Compatibility wrapper around ghc’s "GHC.Utils.Json".
module GHC.Utils.Json
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Json as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" Json as Upstream
#else
import "this" Unresolved as Upstream
#endif
