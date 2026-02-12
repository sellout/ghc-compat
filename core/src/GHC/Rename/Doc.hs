-- | Compatibility wrapper around ghc’s "GHC.Rename.Doc".
module GHC.Rename.Doc
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Rename.Doc as Upstream
#else
import "ghc" RnHsDoc as Upstream
#endif
