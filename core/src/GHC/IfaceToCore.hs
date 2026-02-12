-- | Compatibility wrapper around ghc’s "GHC.IfaceToCore".
module GHC.IfaceToCore
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.IfaceToCore as Upstream
#else
import "ghc" TcIface as Upstream
#endif
