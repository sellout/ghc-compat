-- | Compatibility wrapper around ghc’s "GHC.Cmm.Utils".
module GHC.Cmm.Utils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Utils as Upstream
#else
import "ghc" CmmUtils as Upstream
#endif
