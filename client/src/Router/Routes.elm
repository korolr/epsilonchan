module Router.Routes exposing (Page(..), routes, toPath)

import Browser.Navigation
import Url.Parser exposing ((</>), Parser, map, oneOf, parse, s, top)


type Page
    = Home
    | NotFound
    | CatsPage
    | CounterPage
    | GraphPage
    | UrlPage


routes : Parser (Page -> a) a
routes =
    oneOf
        [ map Home top
        , map NotFound (s "404")
        , map CatsPage (s "cats")
        , map CounterPage (s "counter")
        , map GraphPage (s "graph")
        , map UrlPage (s "url")
        ]


toPath : Page -> String
toPath page =
    case page of
        Home ->
            "/"

        NotFound ->
            "/404"

        CatsPage ->
            "/cats"

        CounterPage ->
            "/counter"

        GraphPage ->
            "/graph"

        UrlPage ->
            "/url"
