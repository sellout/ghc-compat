-- | Compatibility wrapper around ghc’s "GHC.Data.TrieMap".
module GHC.Data.TrieMap
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.TrieMap as Upstream
#else
import "ghc" TrieMap as Upstream
#endif
