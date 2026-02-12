-- | Compatibility wrapper around ghc’s "GHC.Builtin.PrimOps".
module GHC.Builtin.PrimOps
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Builtin.PrimOps as Upstream
#else
import "ghc" PrimOp as Upstream
#endif
