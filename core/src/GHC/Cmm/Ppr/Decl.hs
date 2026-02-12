-- | Compatibility wrapper around ghc’s "GHC.Cmm.Ppr.Decl".
module GHC.Cmm.Ppr.Decl
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Ppr.Decl as Upstream
#else
import "ghc" PprCmmDecl as Upstream
#endif
