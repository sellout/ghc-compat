-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.SetLevels".
module GHC.Core.Opt.SetLevels
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.SetLevels as Upstream
#else
import "ghc" SetLevels as Upstream
#endif
