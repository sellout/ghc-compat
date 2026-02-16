-- | Compatibility wrapper around ghc’s "Language.Haskell.Syntax.Decls".
module Language.Haskell.Syntax.Decls
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "ghc" Language.Haskell.Syntax.Decls as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs.Decls as Upstream
#else
import "ghc" HsDecls as Upstream
#endif
