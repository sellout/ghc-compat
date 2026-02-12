-- | Compatibility wrapper around ghc’s "GHC.ByteCode.Types".
module GHC.ByteCode.Types
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.ByteCode.Types as Upstream
#else
import "ghc" ByteCodeTypes as Upstream
#endif
