-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.WorkWrap".
module GHC.Core.Opt.WorkWrap
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.WorkWrap as Upstream
#else
import "ghc" WorkWrap as Upstream
#endif
