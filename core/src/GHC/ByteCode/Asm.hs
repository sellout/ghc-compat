-- | Compatibility wrapper around ghc’s "GHC.ByteCode.Asm".
module GHC.ByteCode.Asm
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.ByteCode.Asm as Upstream
#else
import "ghc" ByteCodeAsm as Upstream
#endif
