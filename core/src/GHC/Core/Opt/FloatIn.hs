-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.FloatIn".
module GHC.Core.Opt.FloatIn
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.FloatIn as Upstream
#else
import "ghc" FloatIn as Upstream
#endif
