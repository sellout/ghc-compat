-- | Compatibility wrapper around ghc’s "Language.Haskell.Syntax.Lit".
module Language.Haskell.Syntax.Lit
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "ghc" Language.Haskell.Syntax.Lit as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs.Lit as Upstream
#else
import "ghc" HsLit as Upstream
#endif
