-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.DmdAnal".
module GHC.Core.Opt.DmdAnal
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.DmdAnal as Upstream
#else
import "ghc" DmdAnal as Upstream
#endif
