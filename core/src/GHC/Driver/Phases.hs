-- | Compatibility wrapper around ghc’s "GHC.Driver.Phases".
module GHC.Driver.Phases
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Phases as Upstream
#else
import "ghc" DriverPhases as Upstream
#endif
