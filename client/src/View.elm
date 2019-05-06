module View exposing (renderRoute, view)

import Browser
import Cats.View
import Counter.View
import Graph.View
import Home.View
import Html exposing (..)
import Router.Routes exposing (..)
import Router.Types exposing (Msg(..))
import Styles
import Types exposing (..)
import Url.View


view : Model -> Browser.Document Types.Msg
view model =
    { title = "Epsilonchan"
    , body =
        [ div []
            [ renderRoute model
            ]
        ]
    }


renderRoute : Model -> Html Types.Msg
renderRoute model =
    case model.router.page of
        Home ->
            Home.View.view model

        NotFound ->
            text "404 Not Found"

        CatsPage ->
            Html.map MsgForCats (Cats.View.view model.cats)

        CounterPage ->
            Html.map MsgForCounter (Counter.View.view model.counter)

        GraphPage ->
            Html.map MsgForGraph (Graph.View.view model.graph)

        UrlPage id ->
            Html.map MsgForUrl (Url.View.view model.url id)
