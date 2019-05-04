module Styles exposing (button, title)

import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Html.Attributes exposing (class)


title : List (Attr () msg)
title =
    [ Font.size 44
    , Border.width 22
    , Border.solid
    , Border.color (rgb 234 111 123)
    ]


button : List (Attr decorative msg)
button =
    []
