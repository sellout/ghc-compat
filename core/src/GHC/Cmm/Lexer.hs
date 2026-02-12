-- | Compatibility wrapper around ghc’s "GHC.Cmm.Lexer".
module GHC.Cmm.Lexer
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Lexer as Upstream
#else
import "ghc" CmmLe as Upstream
#endif
