-- | Compatibility wrapper around ghc’s "GHC.Parser.CharClass".
module GHC.Parser.CharClass
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Parser.CharClass as Upstream
#else
import "ghc" Ctype as Upstream
#endif
