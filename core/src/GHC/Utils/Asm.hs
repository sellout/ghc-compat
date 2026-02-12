-- | Compatibility wrapper around ghc’s "GHC.Utils.Asm".
module GHC.Utils.Asm
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Asm as Upstream
#else
import "ghc" AsmUtils as Upstream
#endif
