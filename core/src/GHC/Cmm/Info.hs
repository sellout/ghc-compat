-- | Compatibility wrapper around ghc’s "GHC.Cmm.Info".
module GHC.Cmm.Info
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Info as Upstream
#else
import "ghc" CmmInfo as Upstream
#endif
