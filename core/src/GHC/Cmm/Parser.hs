-- | Compatibility wrapper around ghc’s "GHC.Cmm.Parser".
module GHC.Cmm.Parser
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Parser as Upstream
#else
import "ghc" CmmPars as Upstream
#endif
