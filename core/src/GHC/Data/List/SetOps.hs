-- | Compatibility wrapper around ghc’s "GHC.Data.List.SetOps".
module GHC.Data.List.SetOps
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.List.SetOps as Upstream
#else
import "ghc" ListSetOps as Upstream
#endif
