-- | Compatibility wrapper around ghc’s "GHC.Hs.Binds".
module GHC.Hs.Binds
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs.Binds as Upstream
#else
import "ghc" HsBinds as Upstream
#endif
