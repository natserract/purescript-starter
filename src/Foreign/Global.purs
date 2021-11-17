module Foreign.Global where

import Prelude

import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM (Document)
import Web.HTML.HTMLElement (HTMLElement)

foreign import setInnerHTML :: forall eff. String -> HTMLElement -> Effect Unit