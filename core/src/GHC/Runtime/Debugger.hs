-- | Compatibility wrapper around ghc’s "GHC.Runtime.Debugger".
module GHC.Runtime.Debugger
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Runtime.Debugger as Upstream
#else
import "ghc" Debugger as Upstream
#endif
