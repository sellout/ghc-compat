-- | Compatibility wrapper around ghc’s "GHC.Driver.Session".
module GHC.Driver.Session
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Session as Upstream
#else
import "ghc" DynFlags as Upstream
#endif
