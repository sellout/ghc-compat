-- | Compatibility wrapper around ghc’s "GHC.Cmm.Node".
module GHC.Cmm.Node
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Node as Upstream
#else
import "ghc" CmmNode as Upstream
#endif
