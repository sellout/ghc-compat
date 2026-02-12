-- | Compatibility wrapper around ghc’s "GHC.Utils.Panic.Plain".
module GHC.Utils.Panic.Plain
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Panic.Plain as Upstream
#else
import "ghc" PlainPanic as Upstream
#endif
