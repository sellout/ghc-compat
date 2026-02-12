-- | Compatibility wrapper around ghc’s "GHC.Utils.Exception".
module GHC.Utils.Exception
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Exception as Upstream
#else
import "ghc" Exception as Upstream
#endif
