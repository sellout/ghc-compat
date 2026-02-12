-- | Compatibility wrapper around ghc’s "GHC.Types.Var.Set".
module GHC.Types.Var.Set
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Var.Set as Upstream
#else
import "ghc" VarSet as Upstream
#endif
