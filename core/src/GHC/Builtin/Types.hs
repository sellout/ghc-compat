-- | Compatibility wrapper around ghc’s "GHC.Builtin.Types".
module GHC.Builtin.Types
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Builtin.Types as Upstream
#else
import "ghc" TysWiredIn as Upstream
#endif
