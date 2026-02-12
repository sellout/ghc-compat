-- | Compatibility wrapper around ghc’s "GHC.Data.Stream".
module GHC.Data.Stream
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.Stream as Upstream
#else
import "ghc" Stream as Upstream
#endif
