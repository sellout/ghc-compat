-- | Compatibility wrapper around ghc’s "Language.Haskell.Syntax.Binds".
module Language.Haskell.Syntax.Binds
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "ghc" Language.Haskell.Syntax.Binds as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs.Binds as Upstream
#else
import "ghc" HsBinds as Upstream
#endif
