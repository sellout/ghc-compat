-- | Compatibility wrapper around ghc’s "GHC.HsToCore.Foreign.Decl".
module GHC.HsToCore.Foreign.Decl
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.Foreign.Decl as Upstream
#else
import "ghc" DsForeign as Upstream
#endif
