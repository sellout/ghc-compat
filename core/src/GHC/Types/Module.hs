-- | Compatibility wrapper around ghc’s "GHC.Types.Module".
module GHC.Types.Module
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Module as Upstream
#else
import "ghc" Module as Upstream
#endif
