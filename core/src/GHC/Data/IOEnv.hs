-- | Compatibility wrapper around ghc’s "GHC.Data.IOEnv".
module GHC.Data.IOEnv
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.IOEnv as Upstream
#else
import "ghc" IOEnv as Upstream
#endif
