-- | Compatibility wrapper around ghc’s "GHC.Rename.Unbound".
module GHC.Rename.Unbound
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Rename.Unbound as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" RnUnbound as Upstream
#else
import "this" Unresolved as Upstream
#endif
