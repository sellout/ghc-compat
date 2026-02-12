-- | Compatibility wrapper around ghc’s "GHC.Driver.Pipeline.Monad".
module GHC.Driver.Pipeline.Monad
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Pipeline.Monad as Upstream
#else
import "ghc" PipelineMonad as Upstream
#endif
