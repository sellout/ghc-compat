-- | Compatibility wrapper around ghc’s "GHC.Cmm.Opt".
module GHC.Cmm.Opt
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Opt as Upstream
#else
import "ghc" CmmOpt as Upstream
#endif
