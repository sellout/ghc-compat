-- | Compatibility wrapper around ghc’s "GHC.Utils.Lexeme".
module GHC.Utils.Lexeme
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Lexeme as Upstream
#else
import "ghc" Lexeme as Upstream
#endif
