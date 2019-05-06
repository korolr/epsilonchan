module View exposing (renderRoute, view)

import Browser
import Cats.View
import Counter.View
import Element exposing (..)
import Element.Events exposing (..)
import Element.Input exposing (button)
import Element.Region exposing (..)
import Graph.View
import Html.Attributes exposing (class)
import Router.Routes exposing (..)
import Router.Types exposing (Msg(..))
import Styles
import Types exposing (..)
import Url.View


view : Model -> Browser.Document Types.Msg
view model =
    { title = "epsillonchan"
    , body =
        [ Element.layout [] <|
            el [ width (px 800), centerX ] (renderRoute model)
        ]
    }


renderRoute : Model -> Element Types.Msg
renderRoute model =
    case model.router.page of
        Home ->
            column
                [ spacing 5 ]
                [ el ([ heading 1 ] ++ Styles.title ++ [ Element.htmlAttribute (class "nes-text is-primary") ]) (text "Epsilonchan")
                , row [ spacing 20 ]
                    [ link ([ padding 7 ] ++ Styles.button ++ [ Element.htmlAttribute (class "nes-btn is-primary") ]) { url = toPath CatsPage, label = text "Go to Cats" }
                    , link ([ padding 7 ] ++ Styles.button ++ [ Element.htmlAttribute (class "nes-btn is-primary") ]) { url = toPath CounterPage, label = text "Go to Counter" }
                    , link ([ padding 7 ] ++ Styles.button ++ [ Element.htmlAttribute (class "nes-btn is-primary") ]) { url = toPath GraphPage, label = text "Go to Graph" }
                    , link ([ padding 7 ] ++ Styles.button ++ [ Element.htmlAttribute (class "nes-btn is-primary") ]) { url = toPath UrlPage, label = text "url" }
                    ]
                ]

        NotFound ->
            text "404 Not Found"

        CatsPage ->
            Element.map MsgForCats (Cats.View.view model.cats)

        CounterPage ->
            Element.map MsgForCounter (Counter.View.view model.counter)

        GraphPage ->
            Element.map MsgForGraph (Graph.View.view model.graph)

        UrlPage ->
            Element.map MsgForUrl (Url.View.view model.url)
