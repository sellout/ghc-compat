-- | Compatibility wrapper around ghc’s "GHC.Hs.Instances".
module GHC.Hs.Instances
  (
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs.Instances ()
#else
import "ghc" HsInstances ()
#endif
