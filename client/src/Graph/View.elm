module Graph.View exposing (view)

import Bootstrap.Grid as Grid
import Graph.Types exposing (..)
import Html exposing (..)
import RemoteData exposing (RemoteData)


view : Model -> Html Msg
view model =
    Grid.container [] <|
        [ case model of
            RemoteData.Loading ->
                text "Loading"

            RemoteData.Failure e ->
                text "Something went wrong"

            RemoteData.NotAsked ->
                text "Request has not been made yet"

            RemoteData.Success response ->
                case response of
                    Just user ->
                        div []
                            [ h2
                                []
                                [ text user.name ]
                            , h2
                                []
                                [ text (Maybe.withDefault "User has no homePlanet" user.homePlanet) ]
                            ]

                    Nothing ->
                        text "No user was found with that name"
        ]
