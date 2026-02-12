-- | Compatibility wrapper around ghc’s "GHC.Driver.Pipeline".
module GHC.Driver.Pipeline
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Pipeline as Upstream
#else
import "ghc" DriverPipeline as Upstream
#endif
