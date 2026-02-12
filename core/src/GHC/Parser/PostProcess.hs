-- | Compatibility wrapper around ghc’s "GHC.Parser.PostProcess".
module GHC.Parser.PostProcess
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Parser.PostProcess as Upstream
#else
import "ghc" RdrHsSyn as Upstream
#endif
