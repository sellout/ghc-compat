-- | Compatibility wrapper around ghc’s "GHC.Cmm.Liveness".
module GHC.Cmm.Liveness
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Liveness as Upstream
#else
import "ghc" CmmLive as Upstream
#endif
