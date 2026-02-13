-- | Compatibility wrapper around ghc’s "GHC.Rename.Fixity".
module GHC.Rename.Fixity
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Rename.Fixity as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" RnFixity as Upstream
#else
import "this" Unresolved as Upstream
#endif
