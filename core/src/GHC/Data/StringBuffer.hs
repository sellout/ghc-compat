-- | Compatibility wrapper around ghc’s "GHC.Data.StringBuffer".
module GHC.Data.StringBuffer
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.StringBuffer as Upstream
#else
import "ghc" StringBuffer as Upstream
#endif
