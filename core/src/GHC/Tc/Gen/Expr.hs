-- | Compatibility wrapper around ghc’s "GHC.Tc.Gen.Expr".
module GHC.Tc.Gen.Expr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Gen.Expr as Upstream
#else
import "ghc" TcExpr as Upstream
#endif
