module Graph.View exposing (view)

import Bootstrap.Button as Button
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Col as Col
import Bootstrap.Grid.Row as Row
import Graph.Types exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


view : Model -> Html Msg
view model =
    Grid.container [] <|
        [ h2 [] [ text "Graph" ]
        , Button.button
            [ Button.success
            , Button.large
            , Button.block
            , Button.attrs [ class "nes-btn is-primary", onClick Inc ]
            ]
            [ text "+" ]
        , h3 [] [ text (String.fromInt model) ]
        , Button.button
            [ Button.success
            , Button.large
            , Button.block
            , Button.attrs [ class "nes-btn is-primary", onClick Dec ]
            ]
            [ text "-" ]
        ]
