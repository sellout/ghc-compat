-- | Compatibility wrapper around ghc’s "GHC.Cmm.BlockId".
module GHC.Cmm.BlockId
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.BlockId as Upstream
#else
import "ghc" BlockId as Upstream
#endif
