-- | Compatibility wrapper around ghc’s "GHC.Hs.Decls".
module GHC.Hs.Decls
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs.Decls as Upstream
#else
import "ghc" HsDecls as Upstream
#endif
