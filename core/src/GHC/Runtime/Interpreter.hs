-- | Compatibility wrapper around ghc’s "GHC.Runtime.Interpreter".
module GHC.Runtime.Interpreter
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Runtime.Interpreter as Upstream
#else
import "ghc" GHCi as Upstream
#endif
