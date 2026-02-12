-- | Compatibility wrapper around ghc’s "GHC.Core.Class".
module GHC.Core.Class
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Class as Upstream
#else
import "ghc" Class as Upstream
#endif
