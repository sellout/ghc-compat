-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.Simplify.Utils".
module GHC.Core.Opt.Simplify.Utils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.Simplify.Utils as Upstream
#else
import "ghc" SimplUtils as Upstream
#endif
