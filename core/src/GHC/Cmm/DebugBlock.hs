-- | Compatibility wrapper around ghc’s "GHC.Cmm.DebugBlock".
module GHC.Cmm.DebugBlock
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.DebugBlock as Upstream
#else
import "ghc" Debug as Upstream
#endif
