-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.CSE".
module GHC.Core.Opt.CSE
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.CSE as Upstream
#else
import "ghc" CSE as Upstream
#endif
