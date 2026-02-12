-- | Compatibility wrapper around ghc’s "GHC.Types.SrcLoc".
module GHC.Types.SrcLoc
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.SrcLoc as Upstream
#else
import "ghc" SrcLoc as Upstream
#endif
