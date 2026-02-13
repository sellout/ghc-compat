-- | Compatibility wrapper around ghc’s "GHC.CoreToByteCode".
module GHC.CoreToByteCode
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 4, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CoreToByteCode as Upstream
#else
import "ghc" ByteCodeGen as Upstream
#endif
