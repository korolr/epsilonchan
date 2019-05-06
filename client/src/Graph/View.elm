module Graph.View exposing (view)

import Element exposing (..)
import Element.Events exposing (..)
import Element.Input exposing (button)
import Graph.Types exposing (..)
import RemoteData exposing (..)
import Styles


view : Model -> Element Msg
view model =
    row [ centerY, spacing 5 ]
        [ button ([ padding 5 ] ++ Styles.button) { onPress = Just Dec, label = text "-" }
        , text (String.fromInt model)
        , button ([ padding 5 ] ++ Styles.button) { onPress = Just Inc, label = text "+" }
        ]
