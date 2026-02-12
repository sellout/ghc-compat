-- | Compatibility wrapper around ghc’s "GHC.Iface.Tidy".
module GHC.Iface.Tidy
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Tidy as Upstream
#else
import "ghc" TidyPgm as Upstream
#endif
