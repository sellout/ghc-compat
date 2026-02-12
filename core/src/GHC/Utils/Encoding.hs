-- | Compatibility wrapper around ghc’s "GHC.Utils.Encoding".
module GHC.Utils.Encoding
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Encoding as Upstream
#else
import "ghc" Encoding as Upstream
#endif
