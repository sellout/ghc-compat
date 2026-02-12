-- | Compatibility wrapper around ghc’s "GHC.Rename.Bind".
module GHC.Rename.Bind
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Rename.Bind as Upstream
#else
import "ghc" RnBinds as Upstream
#endif
