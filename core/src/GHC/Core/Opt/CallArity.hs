-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.CallArity".
module GHC.Core.Opt.CallArity
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.CallArity as Upstream
#else
import "ghc" CallArity as Upstream
#endif
