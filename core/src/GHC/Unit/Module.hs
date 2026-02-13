-- | Compatibility wrapper around ghc’s "GHC.Unit.Module".
module GHC.Unit.Module
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Unit.Module as Upstream
#else
import "ghc" Module as Upstream
#endif
