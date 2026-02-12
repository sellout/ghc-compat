-- | Compatibility wrapper around ghc’s "GHC.Parser.Annotation".
module GHC.Parser.Annotation
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Parser.Annotation as Upstream
#else
import "ghc" ApiAnnotation as Upstream
#endif
