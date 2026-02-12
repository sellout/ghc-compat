-- | Compatibility wrapper around ghc’s "GHC.Cmm.CommonBlockElim".
module GHC.Cmm.CommonBlockElim
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.CommonBlockElim as Upstream
#else
import "ghc" CmmCommonBlockElim as Upstream
#endif
