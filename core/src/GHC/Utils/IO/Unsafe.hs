-- | Compatibility wrapper around ghc’s "GHC.Utils.IO.Unsafe".
module GHC.Utils.IO.Unsafe
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.IO.Unsafe as Upstream
#else
import "ghc" FastFunctions as Upstream
#endif
