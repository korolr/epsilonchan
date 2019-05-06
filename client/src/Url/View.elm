module Url.View exposing (view)

import Element exposing (..)
import Element.Events exposing (..)
import Element.Input exposing (button)
import RemoteData exposing (..)
import Styles
import Url.Types exposing (..)


view : Model -> Element Msg
view model =
    row [ centerY, spacing 5 ]
        [ button ([ padding 5 ] ++ Styles.button) { onPress = Just Decrement, label = text "-" }
        , text (String.fromInt model)
        , button ([ padding 5 ] ++ Styles.button) { onPress = Just Increment, label = text "+" }
        ]
