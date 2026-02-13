-- | Compatibility wrapper around ghc’s "GHC.Parser.Lexer".
module GHC.Parser.Lexer
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Parser.Lexer as Upstream
#else
import "ghc" Lexer as Upstream
#endif
