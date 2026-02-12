-- | Compatibility wrapper around ghc’s "GHC.Cmm.CLabel".
module GHC.Cmm.CLabel
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.CLabel as Upstream
#else
import "ghc" CLabel as Upstream
#endif
