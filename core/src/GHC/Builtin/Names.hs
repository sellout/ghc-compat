-- | Compatibility wrapper around ghc’s "GHC.Builtin.Names".
module GHC.Builtin.Names
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Builtin.Names as Upstream
#else
import "ghc" PrelNames as Upstream
#endif
