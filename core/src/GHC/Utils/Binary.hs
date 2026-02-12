-- | Compatibility wrapper around ghc’s "GHC.Utils.Binary".
module GHC.Utils.Binary
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Binary as Upstream
#else
import "ghc" Binary as Upstream
#endif
