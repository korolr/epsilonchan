module Counter.View exposing (view)

import Bootstrap.Button as Button
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Col as Col
import Bootstrap.Grid.Row as Row
import Counter.Types exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import List exposing (append)
import Styles exposing (myRedClass)


view : Model -> Html Msg
view model =
    Grid.container [] <|
        [ h2 [] [ text "Counter" ]
        , Button.button
            [ Button.success
            , Button.large
            , Button.block
            , Button.attrs [ class "nes-btn is-primary", onClick Increment ]
            ]
            [ text "+" ]
        , h3 (append [] myRedClass) [ text (String.fromInt model) ]
        , Button.button
            [ Button.success
            , Button.large
            , Button.block
            , Button.attrs [ class "nes-btn is-primary", onClick Decrement ]
            ]
            [ text "-" ]
        ]
