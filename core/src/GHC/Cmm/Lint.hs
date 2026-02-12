-- | Compatibility wrapper around ghc’s "GHC.Cmm.Lint".
module GHC.Cmm.Lint
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Lint as Upstream
#else
import "ghc" CmmLint as Upstream
#endif
