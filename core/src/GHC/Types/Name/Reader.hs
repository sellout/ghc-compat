-- | Compatibility wrapper around ghc’s "GHC.Types.Name.Reader".
module GHC.Types.Name.Reader
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Name.Reader as Upstream
#else
import "ghc" RdrName as Upstream
#endif
