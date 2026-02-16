-- | Compatibility wrapper around ghc’s "Language.Haskell.Syntax.Extension".
module Language.Haskell.Syntax.Extension
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "ghc" Language.Haskell.Syntax.Extension as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs.Extension as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" HsExtension as Upstream
#else
import "this" Unresolved as Upstream
#endif
