-- | Compatibility wrapper around ghc’s "GHC.Hs.Doc".
module GHC.Hs.Doc
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(8, 10, 0)
import "ghc" GHC.Hs.Doc as Upstream
#else
import "ghc" HsDoc as Upstream
#endif
