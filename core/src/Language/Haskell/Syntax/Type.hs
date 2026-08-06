-- | Compatibility wrapper around ghc’s "Language.Haskell.Syntax.Type".
module Language.Haskell.Syntax.Type
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 2, 0)
import "ghc" Language.Haskell.Syntax.Type as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Hs.Type as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs.Types as Upstream
#else
import "ghc" HsTypes as Upstream
#endif
