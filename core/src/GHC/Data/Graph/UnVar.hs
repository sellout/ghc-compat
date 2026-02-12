-- | Compatibility wrapper around ghc’s "GHC.Data.Graph.UnVar".
module GHC.Data.Graph.UnVar
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.Graph.UnVar as Upstream
#else
import "ghc" UnVarGraph as Upstream
#endif
