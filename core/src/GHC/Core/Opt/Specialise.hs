-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.Specialise".
module GHC.Core.Opt.Specialise
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.Specialise as Upstream
#else
import "ghc" Specialise as Upstream
#endif
