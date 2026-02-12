-- | Compatibility wrapper around ghc’s "GHC.Platform.Reg.Class".
module GHC.Platform.Reg.Class
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Platform.Reg.Class as Upstream
#else
import "ghc" RegClass as Upstream
#endif
