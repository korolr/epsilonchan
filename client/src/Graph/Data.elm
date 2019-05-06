module Graph.Data exposing (humanSelection, makeRequest, query)

import Graph.Types exposing (..)
import Graphql.Document as Document
import Graphql.Http
import Graphql.Operation exposing (RootQuery)
import Graphql.SelectionSet as SelectionSet exposing (SelectionSet)
import RemoteData exposing (RemoteData)
import Swapi.Object
import Swapi.Object.Human as Human
import Swapi.Query as Query
import Swapi.Scalar exposing (Id(..))


query : SelectionSet (Maybe Human) RootQuery
query =
    Query.human { id = Id "1001" } humanSelection


humanSelection : SelectionSet Human Swapi.Object.Human
humanSelection =
    SelectionSet.map2 Human
        Human.name
        Human.homePlanet


makeRequest : Cmd Msg
makeRequest =
    query
        |> Graphql.Http.queryRequest "https://elm-graphql.herokuapp.com"
        |> Graphql.Http.send (RemoteData.fromResult >> GotResponse)
