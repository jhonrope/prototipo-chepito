module Main.State exposing (..)

import Main.Types exposing (..)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Hola ->
            model ! []


initApp =
    Model "hola" ! []


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
