-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.OccurAnal".
module GHC.Core.Opt.OccurAnal
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.OccurAnal as Upstream
#else
import "ghc" OccurAnal as Upstream
#endif
