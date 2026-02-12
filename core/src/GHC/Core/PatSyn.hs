-- | Compatibility wrapper around ghc’s "GHC.Core.PatSyn".
module GHC.Core.PatSyn
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.PatSyn as Upstream
#else
import "ghc" PatSyn as Upstream
#endif
