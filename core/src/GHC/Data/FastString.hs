-- | Compatibility wrapper around ghc’s "GHC.Data.FastString".
module GHC.Data.FastString
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.FastString as Upstream
#else
import "ghc" FastString as Upstream
#endif
