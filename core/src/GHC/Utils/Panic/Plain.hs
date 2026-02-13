-- | Compatibility wrapper around ghc’s "GHC.Utils.Panic.Plain".
module GHC.Utils.Panic.Plain
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Panic.Plain as Upstream
#elif MIN_VERSION_ghc(8, 8, 0)
import "ghc" PlainPanic as Upstream
#else
import "this" Unresolved as Upstream
#endif
