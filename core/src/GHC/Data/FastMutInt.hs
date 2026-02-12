-- | Compatibility wrapper around ghc’s "GHC.Data.FastMutInt".
module GHC.Data.FastMutInt
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.FastMutInt as Upstream
#else
import "ghc" FastMutInt as Upstream
#endif
