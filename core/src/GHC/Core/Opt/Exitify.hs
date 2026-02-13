-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.Exitify".
module GHC.Core.Opt.Exitify
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.Exitify as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" Exitify as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "this" Unresolved as Upstream
#else
import "ghc" Exitify as Upstream
#endif
