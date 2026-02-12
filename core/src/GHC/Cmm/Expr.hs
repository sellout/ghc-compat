-- | Compatibility wrapper around ghc’s "GHC.Cmm.Expr".
module GHC.Cmm.Expr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Expr as Upstream
#else
import "ghc" CmmExpr as Upstream
#endif
