-- | Compatibility wrapper around ghc’s "GHC.Runtime.Eval".
module GHC.Runtime.Eval
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Runtime.Eval as Upstream
#else
import "ghc" InteractiveEval as Upstream
#endif
