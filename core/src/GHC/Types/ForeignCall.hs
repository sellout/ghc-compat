-- | Compatibility wrapper around ghc’s "GHC.Types.ForeignCall".
module GHC.Types.ForeignCall
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.ForeignCall as Upstream
#else
import "ghc" ForeignCall as Upstream
#endif
