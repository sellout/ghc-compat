-- | Compatibility wrapper around ghc’s "GHC.Data.Graph.Color".
module GHC.Data.Graph.Color
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.Graph.Color as Upstream
#else
import "ghc" GraphColor as Upstream
#endif
