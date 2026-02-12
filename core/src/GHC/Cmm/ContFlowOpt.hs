-- | Compatibility wrapper around ghc’s "GHC.Cmm.ContFlowOpt".
module GHC.Cmm.ContFlowOpt
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.ContFlowOpt as Upstream
#else
import "ghc" CmmContFlowOpt as Upstream
#endif
