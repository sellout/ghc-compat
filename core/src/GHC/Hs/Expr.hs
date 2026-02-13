-- | Compatibility wrapper around ghc’s "GHC.Hs.Expr".
module GHC.Hs.Expr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs.Expr as Upstream
#else
import "ghc" HsExpr as Upstream
#endif
