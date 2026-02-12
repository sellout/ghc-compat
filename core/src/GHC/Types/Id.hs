-- | Compatibility wrapper around ghc’s "GHC.Types.Id".
module GHC.Types.Id
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Id as Upstream
#else
import "ghc" Id as Upstream
#endif
