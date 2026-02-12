-- | Compatibility wrapper around ghc’s "GHC.Utils.Ppr.Colour".
module GHC.Utils.Ppr.Colour
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Ppr.Colour as Upstream
#else
import "ghc" PprColour as Upstream
#endif
