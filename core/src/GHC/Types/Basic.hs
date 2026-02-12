-- | Compatibility wrapper around ghc’s "GHC.Types.Basic".
module GHC.Types.Basic
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Basic as Upstream
#else
import "ghc" BasicTypes as Upstream
#endif
