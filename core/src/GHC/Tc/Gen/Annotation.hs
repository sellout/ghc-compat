-- | Compatibility wrapper around ghc’s "GHC.Tc.Gen.Annotation".
module GHC.Tc.Gen.Annotation
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Gen.Annotation as Upstream
#else
import "ghc" TcAnnotations as Upstream
#endif
