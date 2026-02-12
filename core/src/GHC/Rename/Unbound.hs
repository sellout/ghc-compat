-- | Compatibility wrapper around ghc’s "GHC.Rename.Unbound".
module GHC.Rename.Unbound
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Rename.Unbound as Upstream
#else
import "ghc" RnUnbound as Upstream
#endif
