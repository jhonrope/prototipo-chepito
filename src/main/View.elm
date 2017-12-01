module Main.View exposing (..)

import Html exposing (Html, a, body, div, footer, h1, i, img, li, nav, node, p, text, ul)
import Html.Attributes exposing (attribute, class, href, src)
import Main.Types exposing (..)


navBar : Model -> Html Msg
navBar model =
    nav []
        [ div [ class "nav-wrapper light-green lighten-1" ]
            [ a [ href "#", class "brand-logo" ] [ text "Chepito" ]
            , ul [ class "right" ]
                [ li [] [ a [ href "#Inicio" ] [ text "Inicio" ] ]
                , li [] [ a [ href "#Sobre Nosotros" ] [ text "Sobre Nosotros" ] ]
                ]
            ]
        ]


header : Model -> Html Msg
header model =
    div [] []


bodySection model =
    body []
        [ div [ class "container" ]
            [ div [ class "row" ]
                [ div [ class "col s12" ] [ h1 [ class "center-align" ] [ text "Chepito" ] ]
                ]
            , div [ class "row" ]
                [ div [ class "col s12 m6" ] [ card "history" "Histórico" ]
                , div [ class "col s12 m6" ] [ card "money_off" "Mis Multas" ]
                ]
            ]
        ]


footerBar =
    footer [ class "page-footer light-green lighten-1" ]
        [ div [ class "footer-copyright " ]
            [ div [ class "container" ] [ text "© 2017 Copyright" ]
            , a [ class "grey-text text-lighten-4 right", href "#!" ] [ text "Más enlaces." ]
            ]
        ]


card icon title =
    div [ class "card hoverable" ]
        [ div [ class "card-content center" ]
            [ i [ class "material-icons large" ] [ text icon ] ]
        , div [ class "card-title center" ] [ text title ]
        ]


view : Model -> Html Msg
view model =
    div []
        [ linkResource "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css"
        , linkResource "https://fonts.googleapis.com/icon?family=Material+Icons"
        , navBar model
        , bodySection model
        , footerBar
        ]


linkResource url =
    let
        tag =
            "link"

        attrs =
            [ attribute "rel" "stylesheet"
            , attribute "property" "stylesheet"
            , attribute "href" url
            ]

        children =
            []
    in
        node tag attrs children
