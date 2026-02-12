-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.StaticArgs".
module GHC.Core.Opt.StaticArgs
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.StaticArgs as Upstream
#else
import "ghc" SAT as Upstream
#endif
