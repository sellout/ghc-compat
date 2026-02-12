-- | Compatibility wrapper around ghc’s "GHC.Builtin.Utils".
module GHC.Builtin.Utils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Builtin.Utils as Upstream
#else
import "ghc" PrelInfo as Upstream
#endif
