-- | Compatibility wrapper around ghc’s "GHC.Types.Var".
module GHC.Types.Var
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Var as Upstream
#else
import "ghc" Var as Upstream
#endif
