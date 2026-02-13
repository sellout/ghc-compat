-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.Expr".
module GHC.StgToCmm.Expr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.StgToCmm.Expr as Upstream
#else
import "ghc" StgCmmExpr as Upstream
#endif
