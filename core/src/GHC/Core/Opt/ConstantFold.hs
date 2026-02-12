-- | Compatibility wrapper around ghc’s "GHC.Core.Opt.ConstantFold".
module GHC.Core.Opt.ConstantFold
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Core.Opt.ConstantFold as Upstream
#else
import "ghc" PrelRules as Upstream
#endif
