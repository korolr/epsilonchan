-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Swapi.Enum.Language exposing (Language(..), decoder, fromString, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-|

  - En - English
  - Es - Spanish
  - No - Norwegian

-}
type Language
    = En
    | Es
    | No


list : List Language
list =
    [ En, Es, No ]


decoder : Decoder Language
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "EN" ->
                        Decode.succeed En

                    "ES" ->
                        Decode.succeed Es

                    "NO" ->
                        Decode.succeed No

                    _ ->
                        Decode.fail ("Invalid Language type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : Language -> String
toString enum =
    case enum of
        En ->
            "EN"

        Es ->
            "ES"

        No ->
            "NO"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe Language
fromString enumString =
    case enumString of
        "EN" ->
            Just En

        "ES" ->
            Just Es

        "NO" ->
            Just No

        _ ->
            Nothing
