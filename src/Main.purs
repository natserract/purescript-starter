module Main where

import Prelude
import Web.HTML.HTMLElement

import Data.Either (Either(..), hush)
import Data.Maybe (Maybe(..))
import Data.Tuple.Nested ((/\))
import Effect (Effect)
import Effect.Aff (Aff, launchAff_)
import Effect.Class.Console (log)
import Foreign.Object as Object
import Halogen (liftEffect)
import Halogen as H
import Halogen.Aff as HA
import Halogen.Aff.Driver (runUI)
import Halogen.HTML (body)
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP
import Halogen.Hooks as Hooks
import Route (Route, routeCodec)
import Routing.Duplex (parse)
import Routing.Hash (matchesWith)

data Query a
  = Navigate Route a

examples =
    HH.div_
      [ HH.h1_
        [ HH.text "Halogen Hooks" ]
      , HH.p_
        [ HH.text "See the Halogen Hooks "
        , HH.a
          [ HP.href "https://github.com/thomashoneyman/purescript-halogen-hooks" ]
          [ HH.text "README" ]
        , HH.text " for details."
        ]
      ]
      
main :: Effect Unit
main = HA.runHalogenAff do
  log "Hello Purs"
