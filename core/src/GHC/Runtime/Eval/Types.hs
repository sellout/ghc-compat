-- | Compatibility wrapper around ghc’s "GHC.Runtime.Eval.Types".
module GHC.Runtime.Eval.Types
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Runtime.Eval.Types as Upstream
#else
import "ghc" InteractiveEvalTypes as Upstream
#endif
