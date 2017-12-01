module App exposing (..)

import Html exposing (program)
import Main.Types exposing (..)
import Main.View exposing (..)
import Main.State exposing (..)


main =
    Html.program { init = initApp, view = view, update = update, subscriptions = subscriptions }
