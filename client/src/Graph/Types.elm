module Graph.Types exposing (Human, Model, Msg(..), Response)

import Graphql.Http
import RemoteData exposing (RemoteData)


type alias Response =
    Maybe Human


type alias Human =
    { name : String
    , homePlanet : Maybe String
    }


type Msg
    = GotResponse Model


type alias Model =
    RemoteData (Graphql.Http.Error Response) Response
