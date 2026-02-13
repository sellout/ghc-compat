-- | Compatibility wrapper around ghc’s "GHC.Parser.PostProcess.Haddock".
module GHC.Parser.PostProcess.Haddock
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Parser.PostProcess.Haddock as Upstream
#else
import "ghc" HaddockUtils as Upstream
#endif
