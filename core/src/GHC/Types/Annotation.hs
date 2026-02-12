-- | Compatibility wrapper around ghc’s "GHC.Types.Annotation".
module GHC.Types.Annotation
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Annotation as Upstream
#else
import "ghc" Annotations as Upstream
#endif
