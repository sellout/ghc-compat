-- | Compatibility wrapper around ghc’s "GHC.Utils.BufHandle".
module GHC.Utils.BufHandle
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.BufHandle as Upstream
#else
import "ghc" BufWrite as Upstream
#endif
