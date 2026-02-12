-- | Compatibility wrapper around ghc’s "GHC.Settings".
module GHC.Settings
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Stg.Lift as Upstream
#else
import "ghc" Settings as Upstream
import "ghc" FileSettings as Upstream
import "ghc" ToolSettings as Upstream
import "ghc" GhcNameVersion as Upstream
import "ghc" PlatformConstants as Upstream
#endif
