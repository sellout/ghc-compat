-- | Compatibility wrapper around ghc’s "Language.Haskell.Syntax.Expr".
module Language.Haskell.Syntax.Expr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "ghc" Language.Haskell.Syntax.Expr as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs.Expr as Upstream
#else
import "ghc" HsExpr as Upstream
#endif
