-- | Compatibility wrapper around ghc’s "GHC.Driver.Plugins".
module GHC.Driver.Plugins
  ( module X,
  )
where

import "this" GHC.Driver.Plugins.Compat as X
import "this" GHC.Driver.Plugins.Upstream as X (Plugin)
import "this" GHC.Driver.Plugins.Upstream as X hiding
  ( Plugin (..),
    defaultPlugin,
  )
