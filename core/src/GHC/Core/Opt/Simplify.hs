-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.Simplify".
module GHC.Core.Opt.Simplify
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.Simplify as Upstream
#else
import "ghc" Simplify as Upstream
#endif
