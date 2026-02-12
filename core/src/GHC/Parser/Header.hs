-- | Compatibility wrapper around ghc’s "GHC.Parser.Header".
module GHC.Parser.Header
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Parser.Header as Upstream
#else
import "ghc" HeaderInfo as Upstream
#endif
