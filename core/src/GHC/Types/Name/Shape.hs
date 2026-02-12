-- | Compatibility wrapper around ghc’s "GHC.Types.Name.Shape".
module GHC.Types.Name.Shape
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Name.Shape as Upstream
#else
import "ghc" NameShape as Upstream
#endif
