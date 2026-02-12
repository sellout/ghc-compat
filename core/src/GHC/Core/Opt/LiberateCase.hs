-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.LiberateCase".
module GHC.Core.Opt.LiberateCase
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.LiberateCase as Upstream
#else
import "ghc" LiberateCase as Upstream
#endif
