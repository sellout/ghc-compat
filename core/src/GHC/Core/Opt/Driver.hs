-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.Driver".
module GHC.Core.Opt.Driver
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 4, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.Driver as Upstream
#else
import "ghc" SimplCore as Upstream
#endif
