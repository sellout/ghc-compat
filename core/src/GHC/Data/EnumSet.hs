-- | Compatibility wrapper around ghc’s "GHC.Data.EnumSet".
module GHC.Data.EnumSet
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.EnumSet as Upstream
#else
import "ghc" EnumSet as Upstream
#endif
