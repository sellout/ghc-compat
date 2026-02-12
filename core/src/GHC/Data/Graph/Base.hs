-- | Compatibility wrapper around ghc’s "GHC.Data.Graph.Base".
module GHC.Data.Graph.Base
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.Graph.Base as Upstream
#else
import "ghc" GraphBase as Upstream
#endif
