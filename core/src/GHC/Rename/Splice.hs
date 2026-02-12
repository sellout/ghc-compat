-- | Compatibility wrapper around ghc’s "GHC.Rename.Splice".
module GHC.Rename.Splice
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Rename.Splice as Upstream
#else
import "ghc" RnSplice as Upstream
#endif
