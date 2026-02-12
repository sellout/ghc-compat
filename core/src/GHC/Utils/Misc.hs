-- | Compatibility wrapper around ghc’s "GHC.Utils.Misc".
module GHC.Utils.Misc
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Misc as Upstream
#else
import "ghc" Util as Upstream
#endif
