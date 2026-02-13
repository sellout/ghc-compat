-- | Compatibility wrapper around ghc’s "GHC.Data.EnumSet".
module GHC.Data.EnumSet
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.EnumSet as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" EnumSet as Upstream
#elif MIN_VERSION_ghc(8, 0, 0)
import "this" Unresolved as Upstream
#else
import "ghc" EnumSet as Upstream
#endif
