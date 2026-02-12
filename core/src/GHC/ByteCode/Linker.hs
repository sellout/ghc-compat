-- | Compatibility wrapper around ghc’s "GHC.ByteCode.Linker".
module GHC.ByteCode.Linker
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.ByteCode.Linker as Upstream
#else
import "ghc" ByteCodeLink as Upstream
#endif
