-- | Compatibility wrapper around ghc’s "Language.Haskell.Syntax".
module Language.Haskell.Syntax
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "ghc" Language.Haskell.Syntax as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs as Upstream
#else
import "ghc" HsSyn as Upstream
#endif
