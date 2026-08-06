-- | Compatibility wrapper around ghc’s "Language.Haskell.Syntax.Pat".
module Language.Haskell.Syntax.Pat
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "ghc" Language.Haskell.Syntax.Pat as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs.Pat as Upstream
#else
import "ghc" HsPat as Upstream
#endif
