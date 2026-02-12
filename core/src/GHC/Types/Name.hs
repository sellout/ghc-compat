-- | Compatibility wrapper around ghc’s "GHC.Types.Name".
module GHC.Types.Name
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Name as Upstream
#else
import "ghc" Name as Upstream
#endif
