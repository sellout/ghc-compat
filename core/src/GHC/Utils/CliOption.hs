-- | Compatibility wrapper around ghc’s "GHC.Utils.CliOption".
module GHC.Utils.CliOption
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.CliOption as Upstream
#else
import "ghc" CliOption as Upstream
#endif
