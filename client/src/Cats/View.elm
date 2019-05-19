module Cats.View exposing (view)

import Bootstrap.Button as Button
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Col as Col
import Bootstrap.Grid.Row as Row
import Cats.Types exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import RemoteData exposing (..)


view : Model -> Html Msg
view model =
    Grid.container [] <|
        [ h2 [] [ text "Cats" ]
        , Button.button
            [ Button.success
            , Button.large
            , Button.block
            , Button.attrs [ class "nes-btn is-primary", onClick MorePlease ]
            ]
            [ text "More Cats!" ]
        , case model.gifUrl of
            NotAsked ->
                text ""

            Loading ->
                text "Loading..."

            Success gifUrl ->
                img [ src gifUrl ] []

            Failure _ ->
                text "Error loading gif"
        ]
