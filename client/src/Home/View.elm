module Home.View exposing (view)

import Bootstrap.Button as Button
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Col as Col
import Bootstrap.Grid.Row as Row
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Router.Routes exposing (..)
import Types exposing (..)


view : Model -> Html Msg
view model =
    Grid.container [] <|
        [ h1 [] [ text "Epslion" ]
        , Grid.row []
            [ Grid.col
                [ Col.xs2 ]
                [ Button.linkButton
                    [ Button.block
                    , Button.large
                    , Button.attrs [ class "nes-btn is-primary", href "cats" ]
                    ]
                    [ text "Cats" ]
                ]
            , Grid.col
                [ Col.xs2 ]
                [ Button.linkButton
                    [ Button.block
                    , Button.large
                    , Button.attrs [ class "nes-btn is-primary", href "counter" ]
                    ]
                    [ text "Counter" ]
                ]
            , Grid.col
                [ Col.xs2 ]
                [ Button.linkButton
                    [ Button.block
                    , Button.large
                    , Button.attrs [ class "nes-btn is-primary", href "graph" ]
                    ]
                    [ text "Graph" ]
                ]
            , Grid.col
                [ Col.xs4 ]
                [ Button.linkButton
                    [ Button.block
                    , Button.large
                    , Button.attrs [ class "nes-btn is-primary", href "url/5" ]
                    ]
                    [ text "Go to /url/5" ]
                ]
            ]
        ]
