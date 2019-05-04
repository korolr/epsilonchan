module Graph.Update exposing (init, update)

import Graph.Types exposing (..)
import RemoteData exposing (..)
import Return exposing (Return, return)
import Types


init : Return Msg Model
init =
    return 228 Cmd.none


update : Types.Msg -> Model -> Return Msg Model
update msgFor model =
    case msgFor of
        Types.MsgForGraph msg ->
            updateGraph msg model

        _ ->
            return model Cmd.none


updateGraph : Msg -> Model -> Return Msg Model
updateGraph msg model =
    case msg of
        Increment ->
            return (model + 1) Cmd.none

        Decrement ->
            return (model - 1) Cmd.none
