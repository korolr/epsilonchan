module Url.View exposing (view)

import Bootstrap.Button as Button
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Col as Col
import Bootstrap.Grid.Row as Row
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Url.Types exposing (..)


view : Model -> Html Msg
view model =
    Grid.container [] <|
        [ h2 [] [ text "Url" ]
        , Button.button
            [ Button.success
            , Button.large
            , Button.block
            , Button.attrs [ class "nes-btn is-primary", onClick Increment ]
            ]
            [ text "+" ]
        , h3 [] [ text (String.fromInt model) ]
        , Button.button
            [ Button.success
            , Button.large
            , Button.block
            , Button.attrs [ class "nes-btn is-primary", onClick Decrement ]
            ]
            [ text "-" ]
        ]
