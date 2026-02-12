-- | Compatibility wrapper around ghc’s "GHC.Builtin.Types.Prim".
module GHC.Builtin.Types.Prim
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Builtin.Types.Prim as Upstream
#else
import "ghc" TysPrim as Upstream
#endif
