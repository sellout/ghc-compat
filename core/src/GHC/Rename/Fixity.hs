-- | Compatibility wrapper around ghc’s "GHC.Rename.Fixity".
module GHC.Rename.Fixity
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Rename.Fixity as Upstream
#else
import "ghc" RnFixity as Upstream
#endif
