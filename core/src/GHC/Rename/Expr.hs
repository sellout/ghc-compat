-- | Compatibility wrapper around ghc’s "GHC.Rename.Expr".
module GHC.Rename.Expr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Rename.Expr as Upstream
#else
import "ghc" RnExpr as Upstream
#endif
