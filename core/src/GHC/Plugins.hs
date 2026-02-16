-- | Compatibility wrapper around ghc’s "GHC.Plugins".
module GHC.Plugins
  ( module X,
  )
where

import "this" GHC.Driver.Plugins.Compat as X
import "this" GHC.Plugins.Upstream as X (Plugin)
import "this" GHC.Plugins.Upstream as X hiding (Plugin (..), defaultPlugin)
