-- | Compatibility wrapper around ghc’s "GHC.HsToCore.Binds".
module GHC.HsToCore.Binds
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.Binds as Upstream
#else
import "ghc" DsBinds as Upstream
#endif
