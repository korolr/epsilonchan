module Router.Routes exposing (Page(..), routes, toPath)

import Browser.Navigation
import Url.Parser exposing ((</>), Parser, map, oneOf, parse, s, string, top)


type Page
    = Home
    | NotFound
    | CatsPage
    | CounterPage
    | GraphPage
    | UrlPage String


routes : Parser (Page -> a) a
routes =
    oneOf
        [ map Home top
        , map NotFound (s "404")
        , map CatsPage (s "cats")
        , map CounterPage (s "counter")
        , map GraphPage (s "graph")
        , map UrlPage (s "url" </> string)
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

        UrlPage id ->
            "/url/" ++ id
