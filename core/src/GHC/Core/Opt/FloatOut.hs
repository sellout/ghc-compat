-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.FloatOut".
module GHC.Core.Opt.FloatOut
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.FloatOut as Upstream
#else
import "ghc" FloatOut as Upstream
#endif
