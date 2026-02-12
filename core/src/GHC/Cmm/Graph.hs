-- | Compatibility wrapper around ghc’s "GHC.Cmm.Graph".
module GHC.Cmm.Graph
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Graph as Upstream
#else
import "ghc" MkGraph as Upstream
#endif
