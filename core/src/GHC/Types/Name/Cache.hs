-- | Compatibility wrapper around ghc’s "GHC.Types.Name.Cache".
module GHC.Types.Name.Cache
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Name.Cache as Upstream
#else
import "ghc" NameCache as Upstream
#endif
