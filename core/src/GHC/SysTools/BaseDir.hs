-- | Compatibility wrapper around ghc’s "GHC.SysTools.BaseDir".
module GHC.SysTools.BaseDir
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.SysTools.BaseDir as Upstream
#else
import "this" Unresolved as Upstream
#endif
-- import "ghc" SysTools.BaseDir as Upstream
