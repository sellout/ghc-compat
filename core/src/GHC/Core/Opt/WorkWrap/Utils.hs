-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.WorkWrap.Utils".
module GHC.Core.Opt.WorkWrap.Utils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.WorkWrap.Utils as Upstream
#else
import "ghc" WwLib as Upstream
#endif
