-- | Compatibility wrapper around ghc’s "GHC.Utils.Error".
module GHC.Utils.Error
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Error as Upstream
#else
import "ghc" ErrUtils as Upstream
#endif
