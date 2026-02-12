-- | Compatibility wrapper around ghc’s "GHC.Hs.Instances".
module GHC.Hs.Instances
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Hs.Instances as Upstream
#else
import "ghc" HsInstances as Upstream
#endif
