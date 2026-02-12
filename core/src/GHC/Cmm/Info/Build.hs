-- | Compatibility wrapper around ghc’s "GHC.Cmm.Info.Build".
module GHC.Cmm.Info.Build
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Info.Build as Upstream
#else
import "ghc" CmmBuildInfoTables as Upstream
#endif
