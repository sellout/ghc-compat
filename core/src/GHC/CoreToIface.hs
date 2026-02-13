-- | Compatibility wrapper around ghc’s "GHC.CoreToIface".
module GHC.CoreToIface
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.CoreToIface as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" ToIface as Upstream
#else
import "this" Unresolved as Upstream
#endif
