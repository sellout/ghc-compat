-- | Compatibility wrapper around ghc’s "GHC.Utils.Asm".
module GHC.Utils.Asm
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Asm as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" AsmUtils as Upstream
#else
import "this" Unresolved as Upstream
#endif
