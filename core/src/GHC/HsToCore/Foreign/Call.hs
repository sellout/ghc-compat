-- | Compatibility wrapper around ghc’s "GHC.HsToCore.Foreign.Call".
module GHC.HsToCore.Foreign.Call
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.Foreign.Call as Upstream
#else
import "ghc" DsCCall as Upstream
#endif
