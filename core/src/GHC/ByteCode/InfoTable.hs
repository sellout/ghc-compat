-- | Compatibility wrapper around ghc’s "GHC.ByteCode.InfoTable".
module GHC.ByteCode.InfoTable
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.ByteCode.InfoTable as Upstream
#else
import "ghc" ByteCodeItbls as Upstream
#endif
