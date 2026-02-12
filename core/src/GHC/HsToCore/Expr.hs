-- | Compatibility wrapper around ghc’s "GHC.HsToCore.Expr".
module GHC.HsToCore.Expr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.HsToCore.Expr as Upstream
#else
import "ghc" DsExpr as Upstream
#endif
