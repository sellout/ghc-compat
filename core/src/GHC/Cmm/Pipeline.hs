-- | Compatibility wrapper around ghc’s "GHC.Cmm.Pipeline".
module GHC.Cmm.Pipeline
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Pipeline as Upstream
#else
import "ghc" CmmPipeline as Upstream
#endif
