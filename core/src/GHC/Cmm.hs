-- | Compatibility wrapper around ghc’s "GHC.Cmm".
module GHC.Cmm
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm as Upstream
#else
import "ghc" Cmm as Upstream
#endif
