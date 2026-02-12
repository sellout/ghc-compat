-- | Compatibility wrapper around ghc’s "GHC.Builtin.Names.TH".
module GHC.Builtin.Names.TH
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Builtin.Names.TH as Upstream
#else
import "ghc" THNames as Upstream
#endif
