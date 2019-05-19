module Url.Update exposing (init, update)

import RemoteData exposing (..)
import Return exposing (Return, return)
import Types
import Url.Types exposing (..)


init : Return Msg Model
init =
    return 1337 Cmd.none


update : Types.Msg -> Model -> Return Msg Model
update msgFor model =
    case msgFor of
        Types.MsgForUrl msg ->
            updateUrl msg model

        _ ->
            return model Cmd.none


updateUrl : Msg -> Model -> Return Msg Model
updateUrl msg model =
    case msg of
        Increment ->
            return (model + 1) Cmd.none

        Decrement ->
            return (model - 1) Cmd.none
