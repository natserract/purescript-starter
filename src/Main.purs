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
  Object.fromFoldable
    [ "" /\ index


    -- -- Examples from the existing Halogen documentation
    -- , "Halogen|Basic" /\ Halogen.Basic.component
    -- , "Halogen|Components" /\ Halogen.Components.Container.component
    -- , "Halogen|Components: Inputs" /\ Halogen.ComponentsInputs.Container.component
    -- , "Halogen|Effects: Random" /\ Halogen.Effects.Random.component

    -- -- Not quite the Ace component, but the code for Ace is very old and I had
    -- -- trouble getting it to run properly. Still, the point is to demonstrate refs
    -- -- , subscriptions, and queries, and the latter two are covered elsewhere.
    -- , "Halogen|InputRef" /\ Halogen.InputRef.component
    ]
  where
  index :: forall q i o m. H.Component q i o m
  index = Hooks.component \_ _ -> Hooks.pure do
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
  pure [HH.div_ [ HH.text "Oh no! That page wasn't found." ]]
