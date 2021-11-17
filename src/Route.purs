module Route where

import Prelude hiding ((/))
import Routing.Duplex (RouteDuplex', as, root, segment)
import Routing.Duplex.Generic (noArgs, sum)
import Routing.Duplex.Generic.Syntax ((/))
import Data.Either (note)
import Data.Generic.Rep (class Generic)

derive instance genericRoute :: Generic Route _
derive instance eqRoute :: Eq Route
derive instance ordRoute :: Ord Route


data Route = 
  Home

routeCodec :: RouteDuplex' Route
routeCodec = root $ sum
  {
    "Home": noArgs
  }