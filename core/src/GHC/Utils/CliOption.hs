-- | Compatibility wrapper around ghc’s "GHC.Utils.CliOption".
module GHC.Utils.CliOption
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.CliOption as Upstream
#elif MIN_VERSION_ghc(8, 10, 0)
import "ghc" CliOption as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" CliOption as Upstream
#else
import "this" Unresolved as Upstream
#endif
