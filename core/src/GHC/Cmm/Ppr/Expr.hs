-- | Compatibility wrapper around ghc’s "GHC.Cmm.Ppr.Expr".
module GHC.Cmm.Ppr.Expr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 6, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Ppr.Expr as Upstream
#else
import "ghc" PprCmmExpr as Upstream
#endif
