-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.Pipeline".
module GHC.Core.Opt.Pipeline
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.Pipeline as Upstream
#else
import "ghc" SimplCore as Upstream
#endif
